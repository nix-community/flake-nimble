# Derivation for the Nim standard library

{ stdenvNoCC, nim }:

let
  stdenv = stdenvNoCC;
  inherit (stdenv) hostPlatform targetPlatform lib;
  targetPrefix = targetPlatform.config + "-";

in stdenv.mkDerivation {
  pname = "nimstdlib";
  inherit (nim) version src;
  preferLocalBuild = true;

  patches = nim.patches ++ [ ./genode.patch ./foreignDeps.patch ./genode-times.patch ];

  dontConfigure = true;
  dontBuild = true;

  installPhase = ''
    runHook preInstall

    mkdir bin
    touch bin/nim
    ./install.sh $TMPDIR
    cp -rv $TMPDIR/nim/lib $out

    runHook postInstall
  '';

  meta = nim.meta // {
    description = nim.meta.description + " (standard library)";
  };
}
