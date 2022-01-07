{
  description = ''
    libarchive wrapper for Nim
  '';
  inputs.src-nimarchive.url = "https://github.com/genotrance/nimarchive";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
