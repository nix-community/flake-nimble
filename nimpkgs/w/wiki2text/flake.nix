{
  description = ''
    Quickly extracts natural-language text from a MediaWiki XML file.
  '';
  inputs.src-wiki2text.url = "https://github.com/rspeer/wiki2text.git";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
