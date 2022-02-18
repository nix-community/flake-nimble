{
  description = ''High Performance Computing and Image Toolbox: SIMD, JIT Assembler, OpenMP, runtime CPU feature detection, optimised machine learning primitives'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-laser-master.flake = false;
  inputs.src-laser-master.type = "github";
  inputs.src-laser-master.owner = "numforge";
  inputs.src-laser-master.repo = "laser";
  inputs.src-laser-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-laser-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-laser-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-laser-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}