{
  description = ''
    Secure multi-party computation
  '';
  inputs.src-NiMPC.url = "https://github.com/markspanbroek/nimpc";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
