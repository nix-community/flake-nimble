{
  description = ''Consistent Overhead Byte Stuffing for Nim'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."cobs-master".type = "github";
  inputs."cobs-master".owner = "riinr";
  inputs."cobs-master".repo = "flake-nimble";
  inputs."cobs-master".ref = "flake-pinning";
  inputs."cobs-master".dir = "nimpkgs/c/cobs/master";
  inputs."cobs-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."cobs-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}