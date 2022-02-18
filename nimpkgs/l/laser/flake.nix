{
  description = ''High Performance Computing and Image Toolbox: SIMD, JIT Assembler, OpenMP, runtime CPU feature detection, optimised machine learning primitives'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
    inputs."Laser-master".type = "github";
  inputs."Laser-master".owner = "riinr";
  inputs."Laser-master".repo = "flake-nimble";
  inputs."Laser-master".ref = "flake-pinning";
  inputs."Laser-master".dir = "nimpkgs/l/laser/master";

  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}