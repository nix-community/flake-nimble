{
  description = ''Wrappers for X86 SIMD intrinsics'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."simdx86-master".type = "github";
  inputs."simdx86-master".owner = "riinr";
  inputs."simdx86-master".repo = "flake-nimble";
  inputs."simdx86-master".ref = "flake-pinning";
  inputs."simdx86-master".dir = "nimpkgs/s/simdx86/master";
  inputs."simdx86-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."simdx86-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}