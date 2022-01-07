{
  description = ''
    library for generating PDF files
  '';
  inputs.src-nimPDF.url = "https://github.com/jangko/nimpdf";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
