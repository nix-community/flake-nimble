{ nixpkgs ? import <nixpkgs> { } }:

let
  nim-unwrapped = nixpkgs.callPackage ./compiler/unwrapped { };

  nimble-unwrapped = nixpkgs.callPackage ./nimble { nim = nim-unwrapped; };

  nimStdLib = nixpkgs.callPackage ./compiler/stdlib { nim = nim-unwrapped; };

  nim = nixpkgs.callPackage ./compiler/wrapper {
    inherit nimStdLib;
    nim = nim-unwrapped;
    nimble = nimble-unwrapped;
  };

  nimbleSource = with builtins;
    let
      pkg = fromJSON (readFile ./packages/nimble.json);
      latest = head pkg.src.versions;
    in nixpkgs.fetchgit { inherit (latest.value) url rev sha256; };

  nimbleHelper = nixpkgs.runCommand "nimbleHelper" { buildInputs = [ nim ]; } ''
    export HOME=$NIX_BUILD_TOP
    nim c --path:${./DIRTY_HACK} --out:$out ${./src}/nix_from_nimble.nim
  '';

  buildNimble = self:
    { src, homepage }:
    let
      pkgInfoDrv = nixpkgs.runCommand "pkginfo" {
        preferLocal = true;
        inherit src;
        buildInputs = [ nim ];
      } "${nimbleHelper} info $src > $out";

      pkgInfo = import pkgInfoDrv;

      resolvePkg = { name, range }: builtins.getAttr name self;

      nimbleInputs = map resolvePkg pkgInfo.nimble.requires;

    in nixpkgs.stdenv.mkDerivation {
      inherit src;
      inherit (pkgInfo) pname version;
      meta = { inherit homepage; } // pkgInfo.meta;
      passthru = { inherit (pkgInfo) nimble; };

      setupHook = ./setup-hook.sh;

      buildInputs = [ nim ];
      propagatedBuildInputs = nimbleInputs;

      nimFlags = pkgInfo.nimble.backend;

      preHook = ''
        export HOME="$NIX_BUILD_TOP"
      '';

      dontConfigure = true;
      # dontBuild = true;
      # dontInstall = true;
      doCheck = true;

      buildPhase = ''
        echo nimFlags are $nimFlags
        set -v
        runHook preBuild
        for bin in ${toString pkgInfo.nimble.bin}; do
          nim $nimFlags --out:$out/bin/$bin ${pkgInfo.nimble.srcDir}/$bin.nim
        done
        runHook postBuild
      '';

      installPhase = ''
        runHook preInstall
        mkdir -p $out
        cp -r ${pkgInfo.nimble.srcDir} $out/src
        runHook postInstall
      '';

      checkPhase = ''
        runHook preCheck
        runHook postCheck
      '';
    };

  sources =
    # Read the package list and expand to all package versions
    let
      importPackage = { name, value }:
        with builtins;
        let
          args = fromJSON (readFile value);
          expandVersion = assert args.src.method == "git";
            ver: {
              name = "${name}_${replaceStrings [ "." ] [ "_" ] ver.name}";
              value = {
                inherit (args) homepage;
                src = let
                  src' = nixpkgs.fetchgit {
                    inherit (ver.value) fetchSubmodules rev sha256 url;
                  };
                in if hasAttr "subdir" ver then "${src' /subdir}" else src';
              };
            };
          versions = map expandVersion args.src.versions;
        in {
          inherit name;
          value = if args.src ? versions then (head versions).value else null;
        };

      pkgsPaths = import ./packages;
    in map importPackage pkgsPaths;

  self = builtins.listToAttrs (map ({ name, value }: {
    inherit name;
    value = buildNimble self value;
  }) sources) // {
    inherit nim;
  };

in self
