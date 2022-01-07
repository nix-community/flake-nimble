{
  description = ''
    zbar wrapper for Nim
  '';
  inputs.src-nimzbar.url = "https://github.com/genotrance/nimzbar";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
