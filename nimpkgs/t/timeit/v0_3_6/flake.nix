{
  description = ''measuring execution times written in nim.'';
  inputs.src-timeit-v0_3_6.flake = false;
  inputs.src-timeit-v0_3_6.type = "github";
  inputs.src-timeit-v0_3_6.owner = "xflywind";
  inputs.src-timeit-v0_3_6.repo = "timeit";
  inputs.src-timeit-v0_3_6.ref = "refs/tags/v0.3.6";
  
  outputs = { self, nixpkgs, src-timeit-v0_3_6, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-timeit-v0_3_6;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-timeit-v0_3_6"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}