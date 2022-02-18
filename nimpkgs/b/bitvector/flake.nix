{
  description = ''A high performance Nim implementation of BitVector with base SomeUnsignedInt(i.e: uint8-64) with support for slices, and seq supported operations'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
    inputs."bitvector-master".type = "github";
  inputs."bitvector-master".owner = "riinr";
  inputs."bitvector-master".repo = "flake-nimble";
  inputs."bitvector-master".ref = "flake-pinning";
  inputs."bitvector-master".dir = "nimpkgs/b/bitvector/master";

  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}
