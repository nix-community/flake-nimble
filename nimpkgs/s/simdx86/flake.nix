{
  description = ''Wrappers for X86 SIMD intrinsics'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
    inputs."simdX86-master".type = "github";
  inputs."simdX86-master".owner = "riinr";
  inputs."simdX86-master".repo = "flake-nimble";
  inputs."simdX86-master".ref = "flake-pinning";
  inputs."simdX86-master".dir = "nimpkgs/s/simdX86/master";

  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}