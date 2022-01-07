{
  description = ''
    Marc21 parser for Nimlang
  '';
  inputs.src-NimMarc.url = "https://github.com/rsirres/NimMarc";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
