{
  description = ''
    Create SVG-files with QR-codes from strings.
  '';
  inputs.src-qr.url = "https://github.com/ThomasTJdev/nim_qr";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
