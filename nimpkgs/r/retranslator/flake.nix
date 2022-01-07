{
  description = ''
    Transformer
  '';
  inputs.src-retranslator.url = "https://github.com/linksplatform/RegularExpressions.Transformer";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
