{
  description = ''
    Libarchive at compile-time, Libarchive Chibi Edition
  '';
  inputs.src-libarchibi.url = "https://github.com/juancarlospaco/libarchibi";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
