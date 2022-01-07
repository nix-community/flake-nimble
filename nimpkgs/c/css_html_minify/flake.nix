{
  description = ''
    HTML & CSS Minify Lib & App based on Regexes & parallel MultiReplaces
  '';
  inputs.src-css_html_minify.url = "https://github.com/juancarlospaco/nim-css-html-minify";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
