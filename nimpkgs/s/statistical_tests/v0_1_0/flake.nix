{
  description = ''Statistical tests in Nim.'';
  inputs.src-statistical_tests-v0_1_0.flake = false;
  inputs.src-statistical_tests-v0_1_0.type = "github";
  inputs.src-statistical_tests-v0_1_0.owner = "ayman-albaz";
  inputs.src-statistical_tests-v0_1_0.repo = "statistical-tests";
  inputs.src-statistical_tests-v0_1_0.ref = "refs/tags/v0.1.0";
  
  
  inputs."distributions".url = "path:../../../d/distributions";
  inputs."distributions".type = "github";
  inputs."distributions".owner = "riinr";
  inputs."distributions".repo = "flake-nimble";
  inputs."distributions".ref = "flake-pinning";
  inputs."distributions".dir = "nimpkgs/d/distributions";

  outputs = { self, nixpkgs, src-statistical_tests-v0_1_0, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-statistical_tests-v0_1_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-statistical_tests-v0_1_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}