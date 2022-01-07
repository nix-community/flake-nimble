{
  description = ''
    HTML5 Tools for Nim, all Templates, No CSS, No Libs, No JS Framework
  '';
  inputs.src-html_tools.url = "https://github.com/juancarlospaco/nim-html-tools";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
