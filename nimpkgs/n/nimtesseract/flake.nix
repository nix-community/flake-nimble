{
  description = ''
    A wrapper to Tesseract OCR library for Nim
  '';
  inputs.src-nimtesseract.url = "https://github.com/DavideGalilei/nimtesseract";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
