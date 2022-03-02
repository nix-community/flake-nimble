{
  description = ''sha3 - cryptographic hash function'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."sha3-master".type = "github";
  inputs."sha3-master".owner = "riinr";
  inputs."sha3-master".repo = "flake-nimble";
  inputs."sha3-master".ref = "flake-pinning";
  inputs."sha3-master".dir = "nimpkgs/s/sha3/master";
  inputs."sha3-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."sha3-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}