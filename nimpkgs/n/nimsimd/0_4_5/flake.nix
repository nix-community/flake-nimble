{
  description = ''Pleasant Nim bindings for SIMD instruction sets'';
  inputs.src-nimsimd-0_4_5.flake = false;
  inputs.src-nimsimd-0_4_5.type = "github";
  inputs.src-nimsimd-0_4_5.owner = "guzba";
  inputs.src-nimsimd-0_4_5.repo = "nimsimd";
  inputs.src-nimsimd-0_4_5.ref = "refs/tags/0.4.5";
  
  outputs = { self, nixpkgs, src-nimsimd-0_4_5, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nimsimd-0_4_5;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-nimsimd-0_4_5"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}