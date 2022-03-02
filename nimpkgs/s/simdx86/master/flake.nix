{
  description = ''Wrappers for X86 SIMD intrinsics'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  inputs.src-simdX86-master.flake = false;
  inputs.src-simdX86-master.type = "github";
  inputs.src-simdX86-master.owner = "nimlibs";
  inputs.src-simdX86-master.repo = "simdX86";
  inputs.src-simdX86-master.ref = "refs/heads/master";
  inputs.src-simdX86-master.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-simdX86-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-simdX86-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-simdX86-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}