final: prev:

let
  nixpkgs = final;
  inherit (prev) lib nim;

  gitNonInteractive = nixpkgs.buildPackages.writeScriptBin "git"
    "exec ${nixpkgs.git}/bin/git -c credential.helper='' -c credential.helper='!printf quit=1' \"$@\"";

  f = nimblePackages:
    let
      autoPkgs =
        # Read the package list and expand to all package versions
        with builtins;
        let
          prefetches = import ./packages;
          overrides = import ./overrides.nix final;
        in lib.attrsets.mapAttrs (name: jsonFile:
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

            in prev.nimPackages.buildNimPackage ({
              pname = replaceStrings [ "." ] [ "_" ] name;
              version = if latest.version == "HEAD" then
                substring 0 10 latest.source.date
              else
                latest.version;

              src = if hasAttr "subdir" latest.source then
                "${src'}/${latest.source.subdir}"
              else
                src';

              passthru = { inherit (latest) nimble; };

              propagatedBuildInputs =
                map ({ name, range }: nimblePackages.${name} or null)
                (latest.nimble.requires or [ ]);

              meta = {
                inherit (latest.nimble) description;
                inherit (args) homepage;
                license = {
                  homepage = [ ];
                  spdxId = latest.nimble.license;
                };
              };
            } // (overrides.${name} or { }))) prefetches;

    in autoPkgs // {
      inherit nim;
      nimrod = nim;
      # Some Nimble still packages refer to the compiler as "nimrod"

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
    };

in { nimblePackages = lib.makeExtensible f; }
