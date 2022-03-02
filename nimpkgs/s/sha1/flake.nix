{
  description = ''SHA-1 produces a 160-bit (20-byte) hash value from arbitrary input'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."sha1-master".type = "github";
  inputs."sha1-master".owner = "riinr";
  inputs."sha1-master".repo = "flake-nimble";
  inputs."sha1-master".ref = "flake-pinning";
  inputs."sha1-master".dir = "nimpkgs/s/sha1/master";
  inputs."sha1-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."sha1-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}