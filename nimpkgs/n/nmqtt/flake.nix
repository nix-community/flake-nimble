{
  description = ''Native MQTT client library'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."nmqtt-master".type = "github";
  inputs."nmqtt-master".owner = "riinr";
  inputs."nmqtt-master".repo = "flake-nimble";
  inputs."nmqtt-master".ref = "flake-pinning";
  inputs."nmqtt-master".dir = "nimpkgs/n/nmqtt/master";
  inputs."nmqtt-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nmqtt-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."nmqtt-0_1_0".type = "github";
  inputs."nmqtt-0_1_0".owner = "riinr";
  inputs."nmqtt-0_1_0".repo = "flake-nimble";
  inputs."nmqtt-0_1_0".ref = "flake-pinning";
  inputs."nmqtt-0_1_0".dir = "nimpkgs/n/nmqtt/0_1_0";
  inputs."nmqtt-0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nmqtt-0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."nmqtt-v1_0_0".type = "github";
  inputs."nmqtt-v1_0_0".owner = "riinr";
  inputs."nmqtt-v1_0_0".repo = "flake-nimble";
  inputs."nmqtt-v1_0_0".ref = "flake-pinning";
  inputs."nmqtt-v1_0_0".dir = "nimpkgs/n/nmqtt/v1_0_0";
  inputs."nmqtt-v1_0_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nmqtt-v1_0_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."nmqtt-v1_0_2".type = "github";
  inputs."nmqtt-v1_0_2".owner = "riinr";
  inputs."nmqtt-v1_0_2".repo = "flake-nimble";
  inputs."nmqtt-v1_0_2".ref = "flake-pinning";
  inputs."nmqtt-v1_0_2".dir = "nimpkgs/n/nmqtt/v1_0_2";
  inputs."nmqtt-v1_0_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nmqtt-v1_0_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."nmqtt-v1_0_3".type = "github";
  inputs."nmqtt-v1_0_3".owner = "riinr";
  inputs."nmqtt-v1_0_3".repo = "flake-nimble";
  inputs."nmqtt-v1_0_3".ref = "flake-pinning";
  inputs."nmqtt-v1_0_3".dir = "nimpkgs/n/nmqtt/v1_0_3";
  inputs."nmqtt-v1_0_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nmqtt-v1_0_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."nmqtt-v1_0_4".type = "github";
  inputs."nmqtt-v1_0_4".owner = "riinr";
  inputs."nmqtt-v1_0_4".repo = "flake-nimble";
  inputs."nmqtt-v1_0_4".ref = "flake-pinning";
  inputs."nmqtt-v1_0_4".dir = "nimpkgs/n/nmqtt/v1_0_4";
  inputs."nmqtt-v1_0_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nmqtt-v1_0_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}