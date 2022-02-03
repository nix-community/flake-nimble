{
  description = ''measuring execution times written in nim.'';
  inputs.src-timeit-v0_3_4.flake = false;
  inputs.src-timeit-v0_3_4.type = "github";
  inputs.src-timeit-v0_3_4.owner = "xflywind";
  inputs.src-timeit-v0_3_4.repo = "timeit";
  inputs.src-timeit-v0_3_4.ref = "refs/tags/v0.3.4";
  
  outputs = { self, nixpkgs, src-timeit-v0_3_4, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-timeit-v0_3_4;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-timeit-v0_3_4"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}