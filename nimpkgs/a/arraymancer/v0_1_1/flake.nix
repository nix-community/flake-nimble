{
  description = ''A tensor (multidimensional array) library for Nim'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  inputs.src-arraymancer-v0_1_1.flake = false;
  inputs.src-arraymancer-v0_1_1.type = "github";
  inputs.src-arraymancer-v0_1_1.owner = "mratsim";
  inputs.src-arraymancer-v0_1_1.repo = "Arraymancer";
  inputs.src-arraymancer-v0_1_1.ref = "refs/tags/v0.1.1";
  inputs.src-arraymancer-v0_1_1.inputs.nixpkgs.follows = "nixpkgs";
  
  
  # inputs."nimblas".type = "github";
  # inputs."nimblas".owner = "riinr";
  # inputs."nimblas".repo = "flake-nimble";
  # inputs."nimblas".ref = "flake-pinning";
  # inputs."nimblas".dir = "nimpkgs/n/nimblas";
  # inputs."nimblas".inputs.nixpkgs.follows = "nixpkgs";
  # inputs."nimblas".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  outputs = { self, nixpkgs, flakeNimbleLib, src-arraymancer-v0_1_1, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-arraymancer-v0_1_1;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-arraymancer-v0_1_1"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}