{
  description = ''
    Nim module that converts Markdown text to HTML using only regular expressions. Based on jbroadway's Slimdown.
  '';
  inputs.src-slimdown.url = "https://github.com/ruivieira/nim-slimdown";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
