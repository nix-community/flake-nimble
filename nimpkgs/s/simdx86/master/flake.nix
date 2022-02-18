{
  description = ''Wrappers for X86 SIMD intrinsics'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-simdx86-master.flake = false;
  inputs.src-simdx86-master.type = "github";
  inputs.src-simdx86-master.owner = "nimlibs";
  inputs.src-simdx86-master.repo = "simdX86";
  inputs.src-simdx86-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-simdx86-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-simdx86-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-simdx86-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}