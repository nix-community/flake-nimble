{
  description = ''
    module for creating and reading QR codes using http://goqr.me/
  '';
  inputs.src-qrcode.url = "https://github.com/achesak/nim-qrcode";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
