{ stdenv, fetchFromGitHub, makeWrapper, nim, openssl, buildPackages }:

buildPackages.stdenv.mkDerivation rec {
  pname = "nimble";
  version = "0.11.0";

  nativeBuildInputs = [ nim makeWrapper openssl ];

  src = fetchFromGitHub {
    owner = "nim-lang";
    repo = "nimble";
    rev = "v" + version;
    sha256 = "1n8qi10173cbwsai2y346zf3r14hk8qib2qfcfnlx9a8hibrh6rv";
  };

  patches = [
    ./json.patch
    ./subdir.patch
    ./tempdir.patch
    ./url.patch
    ./foreignDeps.patch
  ];

  enableParallelBuilding = true;

  nimFlags = [ "--cpu:${nim.build.cpu}" "--os:${nim.build.os}" "--nilseqs:on" ];

  buildPhase = ''
    runHook preBuild
    local HOME=$TMPDIR
    nim c $nimFlags -o:nimble src/nimble.nim
    runHook postBuild
  '';

  checkPhase = ''
    runHook preCheck
    nimble test
    runHook postCheck
  '';

  installPhase = ''
    runHook preInstall
    install -D nimble $out/bin/nimble
    runHook postInstall
  '';

  postFixup = ''
    rpath=$(patchelf --print-rpath $out/bin/nimble)
    patchelf \
      --set-rpath "$rpath:${stdenv.lib.makeLibraryPath [ openssl ]}" \
      $out/bin/nimble
  '';

  meta = with stdenv.lib; {
    inherit (nim.meta) homepage license platforms;
    description = "Package manager for the Nim programming language";
    maintainers = with maintainers; [ ehmry ];
  };
}
