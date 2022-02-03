{
  description = ''SIMD-accelerated noise generation (Simplex, Perlin).'';
  inputs.src-noisy-0_4_3.flake = false;
  inputs.src-noisy-0_4_3.type = "github";
  inputs.src-noisy-0_4_3.owner = "guzba";
  inputs.src-noisy-0_4_3.repo = "noisy";
  inputs.src-noisy-0_4_3.ref = "refs/tags/0.4.3";
  
  
  inputs."nimsimd".url = "path:../../../n/nimsimd";
  inputs."nimsimd".type = "github";
  inputs."nimsimd".owner = "riinr";
  inputs."nimsimd".repo = "flake-nimble";
  inputs."nimsimd".ref = "flake-pinning";
  inputs."nimsimd".dir = "nimpkgs/n/nimsimd";

  outputs = { self, nixpkgs, src-noisy-0_4_3, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-noisy-0_4_3;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-noisy-0_4_3"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}