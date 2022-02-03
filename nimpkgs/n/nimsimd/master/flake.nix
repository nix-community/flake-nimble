{
  description = ''Pleasant Nim bindings for SIMD instruction sets'';
  inputs.src-nimsimd-master.flake = false;
  inputs.src-nimsimd-master.type = "github";
  inputs.src-nimsimd-master.owner = "guzba";
  inputs.src-nimsimd-master.repo = "nimsimd";
  inputs.src-nimsimd-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-nimsimd-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nimsimd-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-nimsimd-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}