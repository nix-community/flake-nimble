{
  description = ''
    A Beautiful Markdown Parser in the Nim World.
  '';
  inputs.src-markdown.url = "https://github.com/soasme/nim-markdown";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
