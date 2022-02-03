{
  description = ''measuring execution times written in nim.'';
  inputs.src-timeit-0_1_2.flake = false;
  inputs.src-timeit-0_1_2.type = "github";
  inputs.src-timeit-0_1_2.owner = "xflywind";
  inputs.src-timeit-0_1_2.repo = "timeit";
  inputs.src-timeit-0_1_2.ref = "refs/tags/0.1.2";
  
  outputs = { self, nixpkgs, src-timeit-0_1_2, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-timeit-0_1_2;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-timeit-0_1_2"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}