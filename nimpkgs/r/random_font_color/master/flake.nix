{
  description = ''Random curated Fonts and pastel Colors for your UI/UX design, design for non-designers.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  inputs.src-random_font_color-master.flake = false;
  inputs.src-random_font_color-master.type = "github";
  inputs.src-random_font_color-master.owner = "juancarlospaco";
  inputs.src-random_font_color-master.repo = "nim-random-font-color";
  inputs.src-random_font_color-master.ref = "refs/heads/master";
  inputs.src-random_font_color-master.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-random_font_color-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-random_font_color-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-random_font_color-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}