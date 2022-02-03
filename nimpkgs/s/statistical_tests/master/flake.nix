{
  description = ''Statistical tests in Nim.'';
  inputs.src-statistical_tests-master.flake = false;
  inputs.src-statistical_tests-master.type = "github";
  inputs.src-statistical_tests-master.owner = "ayman-albaz";
  inputs.src-statistical_tests-master.repo = "statistical-tests";
  inputs.src-statistical_tests-master.ref = "refs/heads/master";
  
  
  inputs."distributions".url = "path:../../../d/distributions";
  inputs."distributions".type = "github";
  inputs."distributions".owner = "riinr";
  inputs."distributions".repo = "flake-nimble";
  inputs."distributions".ref = "flake-pinning";
  inputs."distributions".dir = "nimpkgs/d/distributions";

  outputs = { self, nixpkgs, src-statistical_tests-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-statistical_tests-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-statistical_tests-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}