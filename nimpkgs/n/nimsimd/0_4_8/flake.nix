{
  description = ''Pleasant Nim bindings for SIMD instruction sets'';
  inputs.src-nimsimd-0_4_8.flake = false;
  inputs.src-nimsimd-0_4_8.type = "github";
  inputs.src-nimsimd-0_4_8.owner = "guzba";
  inputs.src-nimsimd-0_4_8.repo = "nimsimd";
  inputs.src-nimsimd-0_4_8.ref = "refs/tags/0.4.8";
  
  outputs = { self, nixpkgs, src-nimsimd-0_4_8, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nimsimd-0_4_8;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-nimsimd-0_4_8"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}