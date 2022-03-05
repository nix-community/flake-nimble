{
  description = ''Statistical tests in Nim.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-statistical_tests-v0_1_0.flake = false;
  inputs.src-statistical_tests-v0_1_0.type = "github";
  inputs.src-statistical_tests-v0_1_0.owner = "ayman-albaz";
  inputs.src-statistical_tests-v0_1_0.repo = "statistical-tests";
  inputs.src-statistical_tests-v0_1_0.ref = "refs/tags/v0.1.0";
  inputs.src-statistical_tests-v0_1_0.inputs.nixpkgs.follows = "nixpkgs";
  
  
  inputs."distributions".type = "github";
  inputs."distributions".owner = "riinr";
  inputs."distributions".repo = "flake-nimble";
  inputs."distributions".ref = "flake-pinning";
  inputs."distributions".dir = "nimpkgs/d/distributions";
  inputs."distributions".inputs.nixpkgs.follows = "nixpkgs";
  inputs."distributions".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  outputs = { self, nixpkgs, flakeNimbleLib, src-statistical_tests-v0_1_0, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-statistical_tests-v0_1_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-statistical_tests-v0_1_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}