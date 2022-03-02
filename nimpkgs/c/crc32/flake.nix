{
  description = ''CRC32, 2 proc, copied from RosettaCode.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."crc32-master".type = "github";
  inputs."crc32-master".owner = "riinr";
  inputs."crc32-master".repo = "flake-nimble";
  inputs."crc32-master".ref = "flake-pinning";
  inputs."crc32-master".dir = "nimpkgs/c/crc32/master";
  inputs."crc32-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."crc32-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}