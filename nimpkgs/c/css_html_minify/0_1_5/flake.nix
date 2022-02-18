{
  description = ''HTML & CSS Minify Lib & App based on Regexes & parallel MultiReplaces'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-css_html_minify-0_1_5.flake = false;
  inputs.src-css_html_minify-0_1_5.type = "github";
  inputs.src-css_html_minify-0_1_5.owner = "juancarlospaco";
  inputs.src-css_html_minify-0_1_5.repo = "nim-css-html-minify";
  inputs.src-css_html_minify-0_1_5.ref = "refs/tags/0.1.5";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-css_html_minify-0_1_5, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-css_html_minify-0_1_5;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-css_html_minify-0_1_5"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}