{
  description = ''Wrappers for X86 SIMD intrinsics'';
  inputs.src-simdX86-master.flake = false;
  inputs.src-simdX86-master.type = "github";
  inputs.src-simdX86-master.owner = "nimlibs";
  inputs.src-simdX86-master.repo = "simdX86";
  inputs.src-simdX86-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-simdX86-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-simdX86-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-simdX86-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}