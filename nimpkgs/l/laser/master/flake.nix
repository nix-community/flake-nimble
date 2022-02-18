{
  description = ''High Performance Computing and Image Toolbox: SIMD, JIT Assembler, OpenMP, runtime CPU feature detection, optimised machine learning primitives'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-Laser-master.flake = false;
  inputs.src-Laser-master.type = "github";
  inputs.src-Laser-master.owner = "numforge";
  inputs.src-Laser-master.repo = "laser";
  inputs.src-Laser-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-laser-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-laser-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-laser-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}