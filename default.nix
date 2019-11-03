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

  nimbleHelper =
    # Utility for generating Nix metadata from Nimble

    nixpkgs.runCommand "nimbleHelper" { buildInputs = [ nim ]; } ''
      export HOME=$NIX_BUILD_TOP
      nim c --path:${nimble-unwrapped.lib}/src --out:$out ${
        ./src
      }/nix_from_nimble.nim
    '';

  buildNimble =
    # Build a package by inspecting the package sources and
    # matching dependencies to other packages. Failure to
    # generate a package produces a derivation marked broken
    # rather than an evaluation error.
    { self, name }:
    { src, homepage }:
    let
      pkgInfoDrv =
        # Generate a Nix expression file from the package source
        nixpkgs.runCommand (name + "-pkginfo") {
          preferLocalBuild = true;
          inherit src;
          buildInputs = [ nim ];
        } ''
          export HOME=$NIX_BUILD_TOP
          cd $src
          ${nimbleHelper} info $src > $out || echo { broken = true\; } > $out && exit 0
          nimble check || echo { broken = true\; } > $out && exit 0
        '';

      pkgInfo = import pkgInfoDrv;

      missingDependency = with builtins;
        any ({ name, range }: !hasAttr name self) pkgInfo.nimble.requires;

      resolvePkg = { name, range }: builtins.getAttr name self;
      nimbleInputs = map resolvePkg pkgInfo.nimble.requires;

      buildDrv =
        # Build function to use if evaluation succeeds
        nixpkgs.stdenv.mkDerivation {
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

      buildTry = builtins.tryEval buildDrv;

    in with builtins; if pkgInfo ? broken then
      trace "${name} has broken pkgInfo"
      pkgInfoDrv // { meta.broken = true; } # TODO: failure report
    else if missingDependency then
      trace "${name} has a missingDependency"
      pkgInfoDrv // { meta.broken = true; } # TODO: failure report
    else if buildTry.success then
      buildTry.value
    else
      trace "tryEval buildDrv ${name} failed"
      pkgInfoDrv // { meta.broken = true; }; # TODO: failure report

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
    value = buildNimble { inherit self name; } value;
  }) sources) // {
    inherit nim;
    nimrod = nim;
    # Some Nimble still packages refer to the compiler as "nimrod"
  };

in self
