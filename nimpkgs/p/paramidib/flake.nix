{
  description = ''
    paramidi with nimib
  '';
  inputs.src-paramidib.url = "https://github.com/pietroppeter/paramidib";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
