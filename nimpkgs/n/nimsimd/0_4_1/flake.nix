{
  description = ''Pleasant Nim bindings for SIMD instruction sets'';
  inputs.src-nimsimd-0_4_1.flake = false;
  inputs.src-nimsimd-0_4_1.type = "github";
  inputs.src-nimsimd-0_4_1.owner = "guzba";
  inputs.src-nimsimd-0_4_1.repo = "nimsimd";
  inputs.src-nimsimd-0_4_1.ref = "refs/tags/0.4.1";
  
  outputs = { self, nixpkgs, src-nimsimd-0_4_1, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nimsimd-0_4_1;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-nimsimd-0_4_1"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}