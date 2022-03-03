{
  description = ''Color Library'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-Palette-0_1_0.flake = false;
  inputs.src-Palette-0_1_0.type = "github";
  inputs.src-Palette-0_1_0.owner = "momeemt";
  inputs.src-Palette-0_1_0.repo = "Palette";
  inputs.src-Palette-0_1_0.ref = "refs/tags/0.1.0";
  inputs.src-Palette-0_1_0.inputs.nixpkgs.follows = "nixpkgs";
  
  
  # inputs."nigui".type = "github";
  # inputs."nigui".owner = "riinr";
  # inputs."nigui".repo = "flake-nimble";
  # inputs."nigui".ref = "flake-pinning";
  # inputs."nigui".dir = "nimpkgs/n/nigui";
  # inputs."nigui".inputs.nixpkgs.follows = "nixpkgs";
  # inputs."nigui".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  
  # inputs."cligen".type = "github";
  # inputs."cligen".owner = "riinr";
  # inputs."cligen".repo = "flake-nimble";
  # inputs."cligen".ref = "flake-pinning";
  # inputs."cligen".dir = "nimpkgs/c/cligen";
  # inputs."cligen".inputs.nixpkgs.follows = "nixpkgs";
  # inputs."cligen".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  outputs = { self, nixpkgs, flakeNimbleLib, src-Palette-0_1_0, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-Palette-0_1_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-Palette-0_1_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}