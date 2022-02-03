{
  description = ''HTML & CSS Minify Lib & App based on Regexes & parallel MultiReplaces'';
  inputs.src-css_html_minify-0_1_5.flake = false;
  inputs.src-css_html_minify-0_1_5.type = "github";
  inputs.src-css_html_minify-0_1_5.owner = "juancarlospaco";
  inputs.src-css_html_minify-0_1_5.repo = "nim-css-html-minify";
  inputs.src-css_html_minify-0_1_5.ref = "refs/tags/0.1.5";
  
  outputs = { self, nixpkgs, src-css_html_minify-0_1_5, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-css_html_minify-0_1_5;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-css_html_minify-0_1_5"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}