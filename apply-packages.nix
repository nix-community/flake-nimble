{ fetchgit }:
F:

let
  importPackage = { name, value }:
    with builtins;
    let
      args = fromJSON (readFile value);
      expandVersion = assert args.src.method == "git";
        ver: {
          name = "${name}_${replaceStrings [ "." ] [ "_" ] ver.name}";
          value = F {
            pname = name;
            version = ver.name;
            inherit (args) meta;
            src = let
              src' = fetchgit {
                inherit (ver.value) fetchSubmodules rev sha256 url;
              };
            in if hasAttr "subdir" ver.value then "${src' /subdir}" else src';
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

in builtins.concatLists pkgsList
