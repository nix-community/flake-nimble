{
  description = ''
    Amazon Web Services (AWS) APIs
  '';
  inputs.src-atoz.url = "https://github.com/disruptek/atoz";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
