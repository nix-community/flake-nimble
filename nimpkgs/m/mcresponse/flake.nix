{
  description = ''
    mConnect Standardised Response Package
  '';
  inputs.src-mcresponse.url = "https://github.com/abbeymart/mcresponse-nim";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
