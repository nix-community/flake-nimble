{
  description = ''
    Documentation generator that produces pdf and docx from Markdown. Uses Pandoc and LaTeX behind the scenes.
  '';
  inputs.src-foliant.url = "https://github.com/foliant-docs/foliant-nim";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
