{
  description = ''
    Microsoft Azure Cloud Computing Platform and Services (MAC) APIs
  '';
  inputs.src-bluu.url = "https://github.com/disruptek/bluu";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
