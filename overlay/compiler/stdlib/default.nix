# Derivation for the Nim standard library

{ stdenvNoCC, nimUnwrapped }:

let
  stdenv = stdenvNoCC;
  nim = nimUnwrapped;
  inherit (stdenv) hostPlatform targetPlatform lib;
in stdenv.mkDerivation {
  pname = "nimstdlib";
  inherit (nim) version src;
  preferLocalBuild = true;

  patches = nim.patches ++ [ ./foreignDeps.patch ];

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
