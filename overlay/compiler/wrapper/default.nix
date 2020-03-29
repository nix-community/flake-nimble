# The Nim compiler must be aware of the location of its standard library and
# must be able to link programs to a libc. Furthermore, the compiler has some
# configuration files that it reads, and in the case of cross-compilation we
# need to override those defaults.
#
# This function wraps a Nim compiler to meet these requirements.

{ stdenv, lib, makeWrapper, nim, nimStdLib, nimble }:

let inherit (stdenv) hostPlatform targetPlatform lib;

in stdenv.mkDerivation {
  name = "${targetPlatform.config}-${nim.pname}-wrapper-${nim.version}";
  preferLocalBuild = true;

  nativeBuildInputs = [ makeWrapper ];

  dontUnpack = true;
  dontConfigure = true;
  dontBuild = true;

  targetOs = nim.target.os;
  targetCpu = nim.target.cpu;
  ccKind = with stdenv;
    if cc.isGNU then
      "gcc"
    else if cc.isClang then
      "clang"
    else
      abort "no Nim configuration available for ${cc.name}";

  clangExe = "${targetPlatform.config}-clang";
  clangLinkerExe = "${targetPlatform.config}-ld";

  inherit nimStdLib;

  installPhase = ''
    mkdir -p $out/bin $out/etc/nim
    substituteAll ${./nim.cfg} $out/etc/nim/nim.cfg

    for binpath in ${nim}/bin/* ${nimble}/bin/nimble; do
      local binname=`basename $binpath`
      makeWrapper $binpath $out/bin/${targetPlatform.config}-$binname \
        --set NIM_CONFIG_PATH "$out/etc/nim" \
        --prefix PATH : ${lib.makeBinPath [ stdenv.cc ]}:$out/bin \
        --prefix LD_LIBRARY_PATH : ${
          stdenv.lib.makeLibraryPath [ stdenv.cc.libc ]
        }
      ln -s $out/bin/${targetPlatform.config}-$binname $out/bin/$binname
    done
  '';

  passthru = nim.passthru // {
    inherit (stdenv.cc) libc;
    inherit nimble;
    backend = if targetPlatform.isGenode or false then "cpp" else "c";
  };

  meta = nim.meta // {
    description = nim.meta.description
      + " (${nim.target.os}-${nim.target.cpu} wrapper)";
  };
}
