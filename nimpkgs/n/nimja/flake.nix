{
  description = ''
    typed and compiled template engine inspired by jinja2, twig and onionhammer/nim-templates for Nim
  '';
  inputs.src-nimja.url = "https://github.com/enthus1ast/nimja";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
