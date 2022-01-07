{
  description = ''
    Simple reallocating vector
  '';
  inputs.src-vector.url = "https://github.com/tontinton/vector";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
