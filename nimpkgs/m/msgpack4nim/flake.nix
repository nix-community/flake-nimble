{
  description = ''Another MessagePack implementation written in pure nim'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."msgpack4nim-master".type = "github";
  inputs."msgpack4nim-master".owner = "riinr";
  inputs."msgpack4nim-master".repo = "flake-nimble";
  inputs."msgpack4nim-master".ref = "flake-pinning";
  inputs."msgpack4nim-master".dir = "nimpkgs/m/msgpack4nim/master";
  inputs."msgpack4nim-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."msgpack4nim-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."msgpack4nim-v0_2_9".type = "github";
  inputs."msgpack4nim-v0_2_9".owner = "riinr";
  inputs."msgpack4nim-v0_2_9".repo = "flake-nimble";
  inputs."msgpack4nim-v0_2_9".ref = "flake-pinning";
  inputs."msgpack4nim-v0_2_9".dir = "nimpkgs/m/msgpack4nim/v0_2_9";
  inputs."msgpack4nim-v0_2_9".inputs.nixpkgs.follows = "nixpkgs";
  inputs."msgpack4nim-v0_2_9".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."msgpack4nim-v0_3_0".type = "github";
  inputs."msgpack4nim-v0_3_0".owner = "riinr";
  inputs."msgpack4nim-v0_3_0".repo = "flake-nimble";
  inputs."msgpack4nim-v0_3_0".ref = "flake-pinning";
  inputs."msgpack4nim-v0_3_0".dir = "nimpkgs/m/msgpack4nim/v0_3_0";
  inputs."msgpack4nim-v0_3_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."msgpack4nim-v0_3_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."msgpack4nim-v0_3_1".type = "github";
  inputs."msgpack4nim-v0_3_1".owner = "riinr";
  inputs."msgpack4nim-v0_3_1".repo = "flake-nimble";
  inputs."msgpack4nim-v0_3_1".ref = "flake-pinning";
  inputs."msgpack4nim-v0_3_1".dir = "nimpkgs/m/msgpack4nim/v0_3_1";
  inputs."msgpack4nim-v0_3_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."msgpack4nim-v0_3_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}