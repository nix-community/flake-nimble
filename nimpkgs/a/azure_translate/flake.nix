{
  description = ''
    Nim Library for Azure Cognitive Services Translate
  '';
  inputs.src-azure_translate.url = "https://github.com/williamhatcher/azure_translate";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
