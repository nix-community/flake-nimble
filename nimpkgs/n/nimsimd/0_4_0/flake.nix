{
  description = ''Pleasant Nim bindings for SIMD instruction sets'';
  inputs.src-nimsimd-0_4_0.flake = false;
  inputs.src-nimsimd-0_4_0.type = "github";
  inputs.src-nimsimd-0_4_0.owner = "guzba";
  inputs.src-nimsimd-0_4_0.repo = "nimsimd";
  inputs.src-nimsimd-0_4_0.ref = "refs/tags/0.4.0";
  
  outputs = { self, nixpkgs, src-nimsimd-0_4_0, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nimsimd-0_4_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-nimsimd-0_4_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}