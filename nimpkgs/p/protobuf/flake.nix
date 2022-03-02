{
  description = ''Protobuf implementation in pure Nim that leverages the power of the macro system to not depend on any external tools'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."protobuf-master".type = "github";
  inputs."protobuf-master".owner = "riinr";
  inputs."protobuf-master".repo = "flake-nimble";
  inputs."protobuf-master".ref = "flake-pinning";
  inputs."protobuf-master".dir = "nimpkgs/p/protobuf/master";
  inputs."protobuf-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."protobuf-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."protobuf-v0_4_0".type = "github";
  inputs."protobuf-v0_4_0".owner = "riinr";
  inputs."protobuf-v0_4_0".repo = "flake-nimble";
  inputs."protobuf-v0_4_0".ref = "flake-pinning";
  inputs."protobuf-v0_4_0".dir = "nimpkgs/p/protobuf/v0_4_0";
  inputs."protobuf-v0_4_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."protobuf-v0_4_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."protobuf-v0_5_1".type = "github";
  inputs."protobuf-v0_5_1".owner = "riinr";
  inputs."protobuf-v0_5_1".repo = "flake-nimble";
  inputs."protobuf-v0_5_1".ref = "flake-pinning";
  inputs."protobuf-v0_5_1".dir = "nimpkgs/p/protobuf/v0_5_1";
  inputs."protobuf-v0_5_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."protobuf-v0_5_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}