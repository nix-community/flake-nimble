{
  description = ''
    A command to encode / decode text with your dictionary
  '';
  inputs.src-edens.url = "https://github.com/jiro4989/edens";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
