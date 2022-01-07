{
  description = ''
    Huenim
  '';
  inputs.src-huenim.url = "https://github.com/IoTone/huenim";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
