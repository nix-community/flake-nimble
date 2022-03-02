{
  description = ''Single Page Documentation Generator'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  inputs.src-hotdoc-main.flake = false;
  inputs.src-hotdoc-main.type = "github";
  inputs.src-hotdoc-main.owner = "willyboar";
  inputs.src-hotdoc-main.repo = "hotdoc";
  inputs.src-hotdoc-main.ref = "refs/heads/main";
  inputs.src-hotdoc-main.inputs.nixpkgs.follows = "nixpkgs";
  
  
  # inputs."docopt".type = "github";
  # inputs."docopt".owner = "riinr";
  # inputs."docopt".repo = "flake-nimble";
  # inputs."docopt".ref = "flake-pinning";
  # inputs."docopt".dir = "nimpkgs/d/docopt";
  # inputs."docopt".inputs.nixpkgs.follows = "nixpkgs";
  # inputs."docopt".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  
  # inputs."karax".type = "github";
  # inputs."karax".owner = "riinr";
  # inputs."karax".repo = "flake-nimble";
  # inputs."karax".ref = "flake-pinning";
  # inputs."karax".dir = "nimpkgs/k/karax";
  # inputs."karax".inputs.nixpkgs.follows = "nixpkgs";
  # inputs."karax".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  outputs = { self, nixpkgs, flakeNimbleLib, src-hotdoc-main, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-hotdoc-main;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-hotdoc-main"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}