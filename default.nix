{ nixpkgs }:

let
  inherit (nixpkgs) nim;

  nativeBuildInputs = [ nim ];

  nimbleHelper =
    # Utility for generating Nix metadata from Nimble

    nixpkgs.buildPackages.runCommand "nimbleHelper" {
      inherit nativeBuildInputs;
    } ''
      export HOME=$NIX_BUILD_TOP
      nim compile --path:${nim.passthru.nimble.lib}/src --out:$out ${
        ./src
      }/nix_from_nimble.nim
    '';

  buildNimble' =
    # Build a package by inspecting the package sources and
    # matching dependencies to other packages. Failure to
    # generate a package produces a derivation marked broken
    # rather than an evaluation error.
    self:
    { name, src, homepage ? src.meta.homepage, nimbleInputs ? { }, ... }@attrs:
    let
      pkgInfoDrv =
        # Generate a Nix expression file from the package source
        nixpkgs.buildPackages.runCommand (name + "-pkginfo") {
          preferLocalBuild = true;
          inherit src;
          inherit nativeBuildInputs;
        } ''
          export NIMBLE_DIR=$NIX_BUILD_TOP
          cd $src
          mkdir -p $out/nix-support
          if ! nimble check; then
            nimble check > $out/nimble.check && true
            echo { broken = true\; } > $out/nimble.nix
            echo "report nimble.check $out nimble.check" > \
              $out/nix-support/hydra-build-products
            exit 0
          fi
          ${nimbleHelper} info $src > $out/nimble.nix
        '';

      pkgInfo = import (pkgInfoDrv + "/nimble.nix");

      missingDependency = with builtins;
        any ({ name, range }: !hasAttr name self) pkgInfo.nimble.requires;

      missingDependencies = with builtins;
        let
          missing = filter ({ name, range }: !hasAttr name self)
            pkgInfo.nimble.requires;
        in map (getAttr name) missing;

      resolvePkg = { name, range }:
        builtins.getAttr name (self // nimbleInputs);
      nimbleInputs' = map resolvePkg pkgInfo.nimble.requires;

      buildDrv =
        # Build function to use if evaluation succeeds
        nixpkgs.stdenv.mkDerivation (attrs // rec {
          inherit src;
          inherit (pkgInfo) pname version;
          meta = { inherit homepage; } // pkgInfo.meta;
          passthru = { inherit (pkgInfo) nimble; };

          setupHook = ./setup-hook.sh;

          inherit nativeBuildInputs;
          propagatedBuildInputs = nimbleInputs'
            ++ (map (name: builtins.getAttr name nixpkgs)
              pkgInfo.nimble.foreignDeps);

          nimFlags = with builtins;
            let
              libs = filter (pkg: hasAttr "nimble" (pkg.passthru or { }))
                nimbleInputs';
              libPaths = map (lib: ''--path:"${lib}/src"'') libs;
            in toString ([ pkgInfo.nimble.backend ] ++ libPaths);

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
        });

      buildTry = builtins.tryEval buildDrv;

    in with builtins;
    if pkgInfo ? broken then
      trace "${name} has broken pkgInfo" pkgInfoDrv // {
        meta.broken = true;
      } # TODO: failure report
    else if missingDependency then
      trace
      "${name} has a missingDependency [ ${toString missingDependencies} ]"
      pkgInfoDrv // {
        meta.broken = true;
      } # TODO: failure report
    else if buildTry.success then
      buildTry.value
    else
      trace "tryEval buildDrv ${name} failed" pkgInfoDrv // {
        meta.broken = true;
      }; # TODO: failure report

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
          value = if args.src ? versions then
            (head versions).value
          else
            nixpkgs.buildPackages.runCommand name { } ''
              mkdir -p $out/nix-support
              echo No sources generated for package ${name}" > $out/failure-report
              echo "report failure-report $out failure-report" >> $out/nix-support/hydra-build-products
            '';
        };

      pkgsPaths = import ./packages;
    in map importPackage pkgsPaths;

  self = let buildNimble = buildNimble' self;
  in builtins.listToAttrs (map ({ name, value }: {
    inherit name;
    value = buildNimble ({ inherit name; } // value);
  }) sources) // {
    nim = nim // { inherit buildNimble; };
    nimrod = nim;
    # Some Nimble still packages refer to the compiler as "nimrod"
  };

in self
