{
  description = ''Pleasant Nim bindings for SIMD instruction sets'';
  inputs.src-nimsimd-0_4_3.flake = false;
  inputs.src-nimsimd-0_4_3.type = "github";
  inputs.src-nimsimd-0_4_3.owner = "guzba";
  inputs.src-nimsimd-0_4_3.repo = "nimsimd";
  inputs.src-nimsimd-0_4_3.ref = "refs/tags/0.4.3";
  
  outputs = { self, nixpkgs, src-nimsimd-0_4_3, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nimsimd-0_4_3;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-nimsimd-0_4_3"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}