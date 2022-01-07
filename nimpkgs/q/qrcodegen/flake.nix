{
  description = ''
    QR Code Generator
  '';
  inputs.src-qrcodegen.url = "https://github.com/bunkford/qrcodegen";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
