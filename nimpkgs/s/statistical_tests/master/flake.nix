{
  description = ''Statistical tests in Nim.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-statistical_tests-master.flake = false;
  inputs.src-statistical_tests-master.type = "github";
  inputs.src-statistical_tests-master.owner = "ayman-albaz";
  inputs.src-statistical_tests-master.repo = "statistical-tests";
  inputs.src-statistical_tests-master.ref = "refs/heads/master";
  inputs.src-statistical_tests-master.inputs.nixpkgs.follows = "nixpkgs";
  
  
  # inputs."distributions".type = "github";
  # inputs."distributions".owner = "riinr";
  # inputs."distributions".repo = "flake-nimble";
  # inputs."distributions".ref = "flake-pinning";
  # inputs."distributions".dir = "nimpkgs/d/distributions";
  # inputs."distributions".inputs.nixpkgs.follows = "nixpkgs";
  # inputs."distributions".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  outputs = { self, nixpkgs, flakeNimbleLib, src-statistical_tests-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-statistical_tests-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-statistical_tests-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}