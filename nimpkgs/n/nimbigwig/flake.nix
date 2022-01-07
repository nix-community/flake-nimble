{
  description = ''
    libBigWig wrapper for Nim
  '';
  inputs.src-nimbigwig.url = "https://github.com/genotrance/nimbigwig";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
