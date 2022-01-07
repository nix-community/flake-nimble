{
  description = ''
    De/serialization library for Nim 
  '';
  inputs.src-deser.url = "https://github.com/gabbhack/deser";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
