{
  description = ''Pleasant Nim bindings for SIMD instruction sets'';
  inputs.src-nimsimd-0_4_2.flake = false;
  inputs.src-nimsimd-0_4_2.type = "github";
  inputs.src-nimsimd-0_4_2.owner = "guzba";
  inputs.src-nimsimd-0_4_2.repo = "nimsimd";
  inputs.src-nimsimd-0_4_2.ref = "refs/tags/0.4.2";
  
  outputs = { self, nixpkgs, src-nimsimd-0_4_2, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nimsimd-0_4_2;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-nimsimd-0_4_2"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}