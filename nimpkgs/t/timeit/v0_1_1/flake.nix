{
  description = ''measuring execution times written in nim.'';
  inputs.src-timeit-v0_1_1.flake = false;
  inputs.src-timeit-v0_1_1.type = "github";
  inputs.src-timeit-v0_1_1.owner = "xflywind";
  inputs.src-timeit-v0_1_1.repo = "timeit";
  inputs.src-timeit-v0_1_1.ref = "refs/tags/v0.1.1";
  
  outputs = { self, nixpkgs, src-timeit-v0_1_1, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-timeit-v0_1_1;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-timeit-v0_1_1"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}