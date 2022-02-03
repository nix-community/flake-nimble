{
  description = ''Statistic-driven microbenchmark framework'';
  inputs.src-criterion-0_1_0.flake = false;
  inputs.src-criterion-0_1_0.type = "github";
  inputs.src-criterion-0_1_0.owner = "disruptek";
  inputs.src-criterion-0_1_0.repo = "criterion";
  inputs.src-criterion-0_1_0.ref = "refs/tags/0.1.0";
  
  outputs = { self, nixpkgs, src-criterion-0_1_0, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-criterion-0_1_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-criterion-0_1_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}