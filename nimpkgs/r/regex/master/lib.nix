let
  systems = [ "aarch64-linux" "x86_64-linux" ];
  mkProjectOutput = { self, nixpkgs, refs, meta }:
  let 
    lib = nixpkgs.lib;
    buildNimPackage = nixpkgs.legacyPackages.x86_64-linux;
    lowerName = lib.toLower meta.name; 
    defaultPackage = 
      refs."${lowerName}-master" or 
      refs."${lowerName}-main" or 
      refs."${lowerName}-unstable" or 
      refs."${lowerName}-develop" or
      (builtins.trace (builtins.attrNames refs) null);
  in {
    defaultPackage.x86_64-linux = defaultPackage.defaultPackage.x86_64-linux;
    packages.x86_64-linux = builtins.mapAttrs (name: value: value.defaultPackage.x86_64-linux) refs;
    inherit meta;
  };
  mkRefOutput = { self, nixpkgs, src, deps, meta }:
  let
    pkgs = nixpkgs.legacyPackages.x86_64-linux;
    lib = nixpkgs.lib;
    resolveDep = depProject:
    let 
      lowerName = lib.toLower depProject.meta.name; 
      depSpec = builtins.head (
        builtins.filter 
        (spec: (lib.toLower spec.name) == lowerName)
        meta.requires
      );
      depPkgs = depProject.packages.x86_64-linux;
      depPkgNames = builtins.attrNames depPkgs;
      name2Version = name: builtins.replaceStrings
        [lowerName "-" "v" "_"]
        [""        ""  ""  "."]
        name;
      depVersions = map name2Version depPkgNames;
      defaultPackage = 
        depPkgs."${lowerName}-master" or 
        depPkgs."${lowerName}-main" or 
        depPkgs."${lowerName}-unstable" or 
        depPkgs."${lowerName}-develop" or
        (builtins.trace (builtins.attrNames depPkgs) null);
      kind = depSpec.ver.kind;
      ver = depSpec.ver.ver;
      compVer = a: b: builtins.compareVersions a b > 0;
      compVerEq = a: b: builtins.compareVersions a b >= 0;
      algs = {
        verEq = 
          let 
            vSuffix = builtins.replaceStrings ["."] ["_"] ver;
          in
            depPkgs."${lowerName}-v${vSuffix}" or 
            depPkgs."${lowerName}-${vSuffix}" or 
            (builtins.trace "using default not ${vSuffix}" defaultPackage);
        verLater = 
          let 
            validVersions = builtins.filter 
              (v: compVer v ver)
              depVersions;
            lastVersion = builtins.head 
              (builtins.sort compVer validVersions);
            vSuffix = builtins.replaceStrings ["."] ["_"] lastVersion;
          in
            depPkgs."${lowerName}-v${vSuffix}" or 
            depPkgs."${lowerName}-${vSuffix}" or 
            (builtins.trace "using default not ${vSuffix}" defaultPackage);
        verEarlier =
          let 
            validVersions = builtins.filter 
              (v: compVer ver v)
              depVersions;
            lastVersion = builtins.head 
              (builtins.sort compVer validVersions);
            vSuffix = builtins.replaceStrings ["."] ["_"] lastVersion;
          in
            depPkgs."${lowerName}-v${vSuffix}" or 
            depPkgs."${lowerName}-${vSuffix}" or 
            (builtins.trace "using default not ${vSuffix}" defaultPackage);
        verEqLater = 
          let 
            validVersions = builtins.filter 
              (v: compVerEq v ver)
              depVersions;
            lastVersion = builtins.head 
              (builtins.sort compVer validVersions);
            vSuffix = builtins.replaceStrings ["."] ["_"] lastVersion;
          in
            depPkgs."${lowerName}-v${vSuffix}" or 
            depPkgs."${lowerName}-${vSuffix}" or 
            (builtins.trace "using default not ${vSuffix}" defaultPackage);
        verEqEarlier = 
          let 
            validVersions = builtins.filter 
              (v: compVerEq ver v)
              depVersions;
            lastVersion = builtins.head 
              (builtins.sort compVer validVersions);
            vSuffix = builtins.replaceStrings ["."] ["_"] lastVersion;
          in
            depPkgs."${lowerName}-v${vSuffix}" or 
            depPkgs."${lowerName}-${vSuffix}" or 
            (builtins.trace "using default not ${vSuffix}" defaultPackage);
        verIntersect = builtins.trace "not implemented ${kind}" defaultPackage;
        verTilde = builtins.trace "not implemented ${kind}" defaultPackage;
        verCaret = builtins.trace "not implemented ${kind}" defaultPackage;
        verAny = defaultPackage;
        verSpecial = builtins.trace "not implemented ${kind}" defaultPackage;

      };
      pkg = algs.${kind} or defaultPackage;
    in [ pkg ];
    resolveDeps = deps: map resolveDep (builtins.attrValues deps);
    ref = builtins.replaceStrings 
      ["refs/" "heads/" "tags/v" "tags/" "_"]
      [""      ""       ""       ""      "."]
      meta.ref;
    version = 
      if ref == meta.version
      then meta.version
      else ref;
  in {
    defaultPackage.x86_64-linux = pkgs.nimPackages.buildNimPackage {
      inherit src version;
      pname = meta.name;
      propagatedBuildInputs = resolveDeps deps;
      meta.description = 
        meta.desc or
        meta.description or 
        "nim package ${meta.name}";
    };
    meta = meta;
  };
  mkMainOutput = { self, nixpkgs, inputs }: {
    lib = {
      inherit mkProjectOutput mkRefOutput systems;
    };
  };
in {
  inherit mkMainOutput mkProjectOutput mkRefOutput systems;
}
