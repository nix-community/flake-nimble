final: prev:

let
  nixpkgs = final;
  inherit (prev) lib nim;
  inherit (final) nimblePackages;

  gitNonInteractive = nixpkgs.buildPackages.writeScriptBin "git"
    "exec ${nixpkgs.git}/bin/git -c credential.helper='' -c credential.helper='!printf quit=1' \"$@\"";

  buildNimble =
    # Build a package by inspecting the package sources and
    # matching dependencies to other packages. Failure to
    # generate a package produces a derivation marked broken
    # rather than an evaluation error.
    { pname, version, nimble ? { }, nimbleInputs ? { }, meta ? { }, ... }@attrs:
    with builtins;
    let
      nimbleBin = nimble.bin or [ ];
      nimbleSrcDir = nimble.srcDir or "src";
      # Build function to use if evaluation succeeds

      nimbleInputs' =
        map ({ name, range }: getAttr name (nimblePackages // nimbleInputs))
        (nimble.requires or [ ]);

    in nixpkgs.stdenv.mkDerivation ({
      inherit pname version;
      passthru = { inherit nimble; };

      setupHook = ./setup-hook.sh;

      nativeBuildInputs = [ nim ];
      propagatedBuildInputs = nimbleInputs'
        ++ (map (name: getAttr name nixpkgs) (nimble.foreignDeps or [ ]));

      nimFlags = map (lib: ''--path:"${lib}/src"'')
        (filter (pkg: hasAttr "nimble" (pkg.passthru or { })) nimbleInputs');

      preHook = ''
        export HOME="$NIX_BUILD_TOP"
      '';

      dontConfigure = true;

      buildPhase = ''
        runHook preBuild
        for bin in ${toString nimbleBin}; do
          nim compile $nimFlags ${nimbleSrcDir}/$bin
        done
        runHook postBuild
      '';

      installPhase = ''
        runHook preInstall
        mkdir -p $out
        cp -r ${nimble.srcDir or "src"} $out/src
        for bin in ${toString (nimble.bin or [ ])}; do
          install -Dt $out/bin ${nimbleSrcDir}/$bin
        done
        runHook postInstall
      '';
    } // (removeAttrs attrs [ "nimble" ]));

  pkgs' =
    # Read the package list and expand to all package versions
    with builtins;
    lib.attrsets.mapAttrs (name: jsonFile:
      let args = fromJSON (readFile jsonFile);
      in if length (args.versions or [ ]) < 1 then
        abort "${name} has no versions available: ${toJSON args}"
      else
        let
          latest = head args.versions;
          src' = {
            git = nixpkgs.fetchgit {
              inherit (latest.source) fetchSubmodules rev sha256 url;
            };
            hg = nixpkgs.fetchhg {
              inherit (latest.source) fetchSubrepos rev sha256 url;
            };
          }.${latest.source.method};

          missingDependencies =
            filter ({ name, range }: !hasAttr name nimblePackages)
            (latest.nimble.requires or [ ]);

        in buildNimble {
          pname = replaceStrings [ "." ] [ "_" ] name;
          inherit (latest) nimble;
          version = if latest.version == "HEAD" then
            substring 0 10 latest.source.date
          else
            latest.version;

          src = if hasAttr "subdir" latest.source then
            "${src'}/${latest.source.subdir}"
          else
            src';
          meta = {
            inherit (latest.nimble) description;
            inherit (args) homepage;
            license = {
              homepage = [ ];
              spdxId = latest.nimble.license;
            };
            broken = if missingDependencies != [ ] then
              trace "${name} has a missing dependency: ${
                lib.strings.concatMapStringsSep ", "
                ({ name, range }: "${name} ${range}") missingDependencies
              }" true
            else
              false;
          };
        }) (import ./packages);

  package-updater =
    # Utility for generating Nix metadata from Nimble
    let
      nimbleSrc = with nixpkgs;
        stdenv.mkDerivation rec {
          pname = "nimble-src";
          version = "0.11.0";
          src = fetchFromGitHub {
            owner = "nim-lang";
            repo = "nimble";
            rev = "v" + version;
            sha256 = "1n8qi10173cbwsai2y346zf3r14hk8qib2qfcfnlx9a8hibrh6rv";
          };
          patches = [
            ./patches/nimble/json.patch
            ./patches/nimble/subdir.patch
            ./patches/nimble/tempdir.patch
            ./patches/nimble/url.patch
            ./patches/nimble/foreignDeps.patch
          ];
          dontConfigure = true;
          dontBuild = true;
          installPhase = "cp -r ./ $out";
        };
    in nixpkgs.buildPackages.runCommand "package-updater" {
      nativeBuildInputs =
        [ nixpkgs.buildPackages.buildPackages.nim nixpkgs.makeWrapper ];
      nimFlags = [ "--path:${nimbleSrc}/src" ];
    } ''
      export HOME=$NIX_BUILD_TOP
      mkdir -p $out/bin
      nim compile $nimFlags \
        --out:$out/bin/package-updater \
        ${./src}/package_updater.nim
      wrapProgram $out/bin/package-updater \
        --prefix PATH : ${
          lib.makeBinPath [
            nim
            gitNonInteractive
            nixpkgs.nix-prefetch-git
            nixpkgs.nix-prefetch-hg
          ]
        }
    '';

in {
  nimblePackages = pkgs' // {
    inherit package-updater;
    nim = nim // { inherit buildNimble; };
    nimrod = nim;
    # Some Nimble still packages refer to the compiler as "nimrod"
  };
}
