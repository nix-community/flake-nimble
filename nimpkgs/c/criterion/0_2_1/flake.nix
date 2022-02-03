{
  description = ''Statistic-driven microbenchmark framework'';
  inputs.src-criterion-0_2_1.flake = false;
  inputs.src-criterion-0_2_1.type = "github";
  inputs.src-criterion-0_2_1.owner = "disruptek";
  inputs.src-criterion-0_2_1.repo = "criterion";
  inputs.src-criterion-0_2_1.ref = "refs/tags/0.2.1";
  
  outputs = { self, nixpkgs, src-criterion-0_2_1, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-criterion-0_2_1;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-criterion-0_2_1"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}