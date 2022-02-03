{
  description = ''measuring execution times written in nim.'';
  inputs.src-timeit-v0_2_2.flake = false;
  inputs.src-timeit-v0_2_2.type = "github";
  inputs.src-timeit-v0_2_2.owner = "xflywind";
  inputs.src-timeit-v0_2_2.repo = "timeit";
  inputs.src-timeit-v0_2_2.ref = "refs/tags/v0.2.2";
  
  outputs = { self, nixpkgs, src-timeit-v0_2_2, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-timeit-v0_2_2;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-timeit-v0_2_2"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}