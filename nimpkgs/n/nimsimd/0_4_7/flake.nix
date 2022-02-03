{
  description = ''Pleasant Nim bindings for SIMD instruction sets'';
  inputs.src-nimsimd-0_4_7.flake = false;
  inputs.src-nimsimd-0_4_7.type = "github";
  inputs.src-nimsimd-0_4_7.owner = "guzba";
  inputs.src-nimsimd-0_4_7.repo = "nimsimd";
  inputs.src-nimsimd-0_4_7.ref = "refs/tags/0.4.7";
  
  outputs = { self, nixpkgs, src-nimsimd-0_4_7, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nimsimd-0_4_7;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-nimsimd-0_4_7"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}