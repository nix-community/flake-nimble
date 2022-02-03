{
  description = ''SIMD-accelerated noise generation (Simplex, Perlin).'';
  inputs.src-noisy-0_2_1.flake = false;
  inputs.src-noisy-0_2_1.type = "github";
  inputs.src-noisy-0_2_1.owner = "guzba";
  inputs.src-noisy-0_2_1.repo = "noisy";
  inputs.src-noisy-0_2_1.ref = "refs/tags/0.2.1";
  
  outputs = { self, nixpkgs, src-noisy-0_2_1, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-noisy-0_2_1;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-noisy-0_2_1"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}