{
  description = ''
    libsvm wrapper for Nim
  '';
  inputs.src-libsvm.url = "https://github.com/genotrance/libsvm";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
