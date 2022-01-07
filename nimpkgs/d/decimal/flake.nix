{
  description = ''
    A correctly-rounded arbitrary precision decimal floating point arithmetic library
  '';
  inputs.src-decimal.url = "https://github.com/inv2004/nim-decimal";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
