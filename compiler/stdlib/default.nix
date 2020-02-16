# Derivation for the Nim standard library

{ stdenvNoCC, fetchFromGitHub, nim }:

let
  stdenv = stdenvNoCC;
  inherit (stdenv) hostPlatform targetPlatform lib;
  targetPrefix = targetPlatform.config + "-";

in stdenv.mkDerivation {
  pname = "nimstdlib";
  inherit (nim) version src;
  preferLocalBuild = true;

  extraSrc = fetchFromGitHub {
    owner = "ehmry";
    repo = "nim";
    rev = "4c4006327d20614edadf9e6cda6448f31e4e6215";
    sha256 = "0mgjch1mhxg2w3vza4axwksfzrx0d4phmy7dc8vqcachxnbmkvjh";
  };

  patches = nim.patches ++ [
    ./foreignDeps.patch
    ./genode-lib.patch
    ./genode-pure.patch
    ./genode-system.patch
  ];

  dontConfigure = true;
  dontBuild = true;

  installPhase = ''
    runHook preInstall

    mkdir bin
    touch bin/nim
    ./install.sh $TMPDIR
    cp -rv $TMPDIR/nim/lib $out
    cp -rv $extraSrc/lib/genode $out

    runHook postInstall
  '';

  meta = nim.meta // {
    description = nim.meta.description + " (standard library)";
  };
}
