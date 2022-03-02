{
  description = ''Full-featured CRC library for Nim.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."w8crc-master".type = "github";
  inputs."w8crc-master".owner = "riinr";
  inputs."w8crc-master".repo = "flake-nimble";
  inputs."w8crc-master".ref = "flake-pinning";
  inputs."w8crc-master".dir = "nimpkgs/w/w8crc/master";
  inputs."w8crc-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."w8crc-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."w8crc-v1_0_1".type = "github";
  inputs."w8crc-v1_0_1".owner = "riinr";
  inputs."w8crc-v1_0_1".repo = "flake-nimble";
  inputs."w8crc-v1_0_1".ref = "flake-pinning";
  inputs."w8crc-v1_0_1".dir = "nimpkgs/w/w8crc/v1_0_1";
  inputs."w8crc-v1_0_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."w8crc-v1_0_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}