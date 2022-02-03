{
  description = ''measuring execution times written in nim.'';
  inputs.src-timeit-v0_3_0.flake = false;
  inputs.src-timeit-v0_3_0.type = "github";
  inputs.src-timeit-v0_3_0.owner = "xflywind";
  inputs.src-timeit-v0_3_0.repo = "timeit";
  inputs.src-timeit-v0_3_0.ref = "refs/tags/v0.3.0";
  
  outputs = { self, nixpkgs, src-timeit-v0_3_0, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-timeit-v0_3_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-timeit-v0_3_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}