{
  description = ''Pleasant Nim bindings for SIMD instruction sets'';
  inputs.src-nimsimd-0_4_6.flake = false;
  inputs.src-nimsimd-0_4_6.type = "github";
  inputs.src-nimsimd-0_4_6.owner = "guzba";
  inputs.src-nimsimd-0_4_6.repo = "nimsimd";
  inputs.src-nimsimd-0_4_6.ref = "refs/tags/0.4.6";
  
  outputs = { self, nixpkgs, src-nimsimd-0_4_6, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nimsimd-0_4_6;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-nimsimd-0_4_6"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}