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
    { src, meta, ... }:
    let
      pkgInfoDrv = nixpkgs.runCommand "pkginfo" {
        preferLocal = true;
        inherit src;
        buildInputs = [ nim ];
      } "${nimbleHelper} deps $src > $out";

      pkgInfo = import pkgInfoDrv;

      resolvePkg = { name, range }: builtins.getAttr name self;

      pkgInputs = map resolvePkg pkgInfo.nimbleRequires;

    in builtins.trace pkgInputs nixpkgs.stdenv.mkDerivation (pkgInfo // {
      # pname and version is in pkgInfo
      inherit src;
      meta = meta // pkgInfo.meta;
      nimbleRequires = null;

      buildInputs = [ nim ] ++ pkgInputs;

      preHook = ''
        export HOME="$NIX_BUILD_TOP"
      '';

      dontConfigure = true;
      # dontBuild = true;
      # dontInstall = true;
      doCheck = true;

      buildPhase = ''
        runHook preBuild
        for bin in $nimbleBin; do
          nim $nimbleBackend --out:$out/bin/$bin $nimbleSrcDir/$bin.nim
        done
        runHook postBuild
      '';

      installPhase = ''
        runHook preInstall
        runHook postInstall
      '';

      checkPhase = ''
        runHook preCheck
        runHook postCheck
      '';
    });

  fix = f: let x = f x; in x;

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
                pname = name;
                version = ver.name;
                inherit (args) meta;
                src = let
                  src' = nixpkgs.fetchgit {
                    inherit (ver.value) fetchSubmodules rev sha256 url;
                  };
                in if hasAttr "subdir" ver then "${src' /subdir}" else src';
              };
            };
          versioned = map expandVersion args.src.versions;
          current = head versioned;
        in if args.src ? versions then
          (versioned ++ [{
            inherit name;
            inherit (current) value;
          }])
        else
          [ ];

      pkgsPaths = import ./packages;
      pkgsList = map importPackage pkgsPaths;
    in builtins.concatLists pkgsList;

  self = builtins.listToAttrs (map ({ name, value }: {
    inherit name;
    value = buildNimble self value;
  }) sources) // { inherit nim; };

in self
