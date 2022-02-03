{
  description = ''An alternative DateTime implementation'';
  inputs.src-systimes-v0_2_1.flake = false;
  inputs.src-systimes-v0_2_1.type = "github";
  inputs.src-systimes-v0_2_1.owner = "GULPF";
  inputs.src-systimes-v0_2_1.repo = "systimes";
  inputs.src-systimes-v0_2_1.ref = "refs/tags/v0.2.1";
  
  outputs = { self, nixpkgs, src-systimes-v0_2_1, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-systimes-v0_2_1;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-systimes-v0_2_1"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}