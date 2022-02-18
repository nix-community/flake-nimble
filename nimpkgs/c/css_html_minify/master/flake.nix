{
  description = ''HTML & CSS Minify Lib & App based on Regexes & parallel MultiReplaces'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-css_html_minify-master.flake = false;
  inputs.src-css_html_minify-master.type = "github";
  inputs.src-css_html_minify-master.owner = "juancarlospaco";
  inputs.src-css_html_minify-master.repo = "nim-css-html-minify";
  inputs.src-css_html_minify-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-css_html_minify-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-css_html_minify-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-css_html_minify-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}