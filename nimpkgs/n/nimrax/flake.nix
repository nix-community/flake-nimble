{
  description = ''
    Radix tree wrapper for Nim
  '';
  inputs.src-nimrax.url = "https://github.com/genotrance/nimrax";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
