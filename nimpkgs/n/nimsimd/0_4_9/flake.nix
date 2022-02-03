{
  description = ''Pleasant Nim bindings for SIMD instruction sets'';
  inputs.src-nimsimd-0_4_9.flake = false;
  inputs.src-nimsimd-0_4_9.type = "github";
  inputs.src-nimsimd-0_4_9.owner = "guzba";
  inputs.src-nimsimd-0_4_9.repo = "nimsimd";
  inputs.src-nimsimd-0_4_9.ref = "refs/tags/0.4.9";
  
  outputs = { self, nixpkgs, src-nimsimd-0_4_9, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nimsimd-0_4_9;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-nimsimd-0_4_9"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}