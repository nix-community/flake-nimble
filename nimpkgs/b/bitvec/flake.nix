{
  description = ''Extensible bit vector integer encoding library'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
    inputs."bitvec-master".type = "github";
  inputs."bitvec-master".owner = "riinr";
  inputs."bitvec-master".repo = "flake-nimble";
  inputs."bitvec-master".ref = "flake-pinning";
  inputs."bitvec-master".dir = "nimpkgs/b/bitvec/master";

  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}