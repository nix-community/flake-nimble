let
  systems = [ "aarch64-linux" "x86_64-linux" ];
  mkProjectOutput = { self, nixpkgs, refs, meta }:
  let 
    buildNimPackage = nixpkgs.legacyPackages.x86_64-linux;
    defaultPackage = refs."${meta.name}-master" or 
      refs."${meta.name}-main" or 
      refs."${meta.name}-unstable" or 
      refs."${meta.name}-develop" or null;
  in {
    defaultPackage.x86_64-linux = defaultPackage.defaultPackage.x86_64-linux;
    packages.x86_64-linux = builtins.mapAttrs (name: value: value.defaultPackage.x86_64-linux) refs;
    meta = meta;
  };
  mkRefOutput = { self, nixpkgs, src, deps, meta }:
  let 
    pkgs = nixpkgs.legacyPackages.x86_64-linux;
    bins = meta.bin or [];
    cpBin = bin: "cp -r $out/${bin} $outputBin/";
    installBins = builtins.concatStringsSep "\n" (map cpBin bins);
    binDirs = if (meta.binDir or "") != "" then [ meta.binDir ] else [];
    cpBinDir = binDir: "cp -r $out/${binDir}/* $outputBin/";
    installBinDirs = builtins.concatStringsSep "\n" (map cpBinDir binDirs);
    installDirs = meta.installDirs or [];
    installFiles = meta.installFiles or [];
    hasBins = builtins.length(bins ++ binDirs ++ installDirs ++ installFiles) > 0;
    buildBins = if hasBins then 
    ''
      mkdir -p $outputBin
      cd $out
      echo nim compile \
        -d:release -d:ssl \
        --out:$outputBin/bin/ \
        --path:${deps.cligen.defaultPackage.x86_64-linux}/src
        ${meta.srcDir}/${builtins.head bins}
      cd -
    ''
    else '' '';
    outputs = if hasBins then ["dev" "out" "bin"] else ["dev" "out"];
  in {
    defaultPackage.x86_64-linux = pkgs.stdenv.mkDerivation {
      inherit src outputs;
      pname = meta.name;
      nativeBuildInputs = [ pkgs.nim pkgs.nimble-unwrapped ];
      meta.description = meta.desc or meta.description or "";
      version = meta.version or
        (builtins.replaceStr ["refs/.+/"] [""] meta.ref);
      buildPhase = ''
        mkdir -p nixsource
        find -maxdepth 1 \
          -not -name '.' \
          -not -name '..' \
          -not -name 'nixsource' \
          -exec mv {} 'nixsource' \;
        mkdir -p $out
        mkdir -p $outputDev
        cp -r nixsource/* $out/
        ${buildBins}
      '';
      installPhase = ''
        cp -r nixsource/* $outputDev/
        ${installBins}
        ${installBinDirs}
      '';
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
