{
  description = ''Pleasant Nim bindings for SIMD instruction sets'';
  inputs.src-nimsimd-0_4_4.flake = false;
  inputs.src-nimsimd-0_4_4.type = "github";
  inputs.src-nimsimd-0_4_4.owner = "guzba";
  inputs.src-nimsimd-0_4_4.repo = "nimsimd";
  inputs.src-nimsimd-0_4_4.ref = "refs/tags/0.4.4";
  
  outputs = { self, nixpkgs, src-nimsimd-0_4_4, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nimsimd-0_4_4;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-nimsimd-0_4_4"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}