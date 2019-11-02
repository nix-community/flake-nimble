{ fetchgit }: F:

let
  importPackage = path:
    with builtins;
    let
      args = fromJSON (readFile path);
      expandVersion = assert args.src.method == "git";
        ver: {
          name = "${args.name}_${replaceStrings [ "." ] [ "_" ] ver.name}";
          value = F {
            pname = args.name;
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
    in if args.src ? versions then (versioned ++ [{
      inherit (args) name;
      inherit (current) value;
    }]) else [ ];

  pkgsPaths = import ./packages;
  pkgsList = map importPackage pkgsPaths;

in builtins.concatLists pkgsList
