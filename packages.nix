{ nixpkgs ? <nixpkgs> }:

let
  world = import nixpkgs { system = "x86_64-linux"; };

  nim-unwrapped = world.callPackage ./compiler/unwrapped { };

  nimble-unwrapped = world.callPackage ./nimble { nim = nim-unwrapped; };

  nimStdLib = world.callPackage ./compiler/stdlib { nim = nim-unwrapped; };

  nim = world.callPackage ./compiler/wrapper {
    inherit nimStdLib;
    nim = nim-unwrapped;
    nimble = nimble-unwrapped;
  };

  buildNimble = { pname, version, meta, src }:
    world.stdenv.mkDerivation {
      inherit pname version meta src;
      buildInputs = [ nim ];

      preHook = ''
        export HOME="$NIX_BUILD_TOP"
      '';

      dontConfigure = true;
      # dontBuild = true;
      # dontInstall = true;
      doCheck = true;

      buildPhase = ''
        runHook preBuild
        nimble install --reject --nimbleDir:$out $buildFlags
        runHook postBuild
      '';

      installPhase = ''
        runHook preInstall
        cp -r $NIX_BUILD_TOP/.nimble $out
        runHook postInstall
      '';

      checkPhase = ''
        runHook preCheck
        nimble test --reject --nimbleDir:$out $checkFlags
        runHook postCheck
      '';
    };

  nimblePackages =
    import ./apply-packages.nix { inherit (world) fetchgit; } buildNimble;

in builtins.listToAttrs (nimblePackages) // { inherit nim; }
