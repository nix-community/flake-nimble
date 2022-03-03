{
  description = ''HTML & CSS Minify Lib & App based on Regexes & parallel MultiReplaces'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."css_html_minify-master".type = "github";
  inputs."css_html_minify-master".owner = "riinr";
  inputs."css_html_minify-master".repo = "flake-nimble";
  inputs."css_html_minify-master".ref = "flake-pinning";
  inputs."css_html_minify-master".dir = "nimpkgs/c/css_html_minify/master";
  inputs."css_html_minify-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."css_html_minify-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."css_html_minify-0_1_5".type = "github";
  inputs."css_html_minify-0_1_5".owner = "riinr";
  inputs."css_html_minify-0_1_5".repo = "flake-nimble";
  inputs."css_html_minify-0_1_5".ref = "flake-pinning";
  inputs."css_html_minify-0_1_5".dir = "nimpkgs/c/css_html_minify/0_1_5";
  inputs."css_html_minify-0_1_5".inputs.nixpkgs.follows = "nixpkgs";
  inputs."css_html_minify-0_1_5".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}