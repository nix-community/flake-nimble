{
  description = ''Native MQTT client library'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
    inputs."nmqtt-master".type = "github";
  inputs."nmqtt-master".owner = "riinr";
  inputs."nmqtt-master".repo = "flake-nimble";
  inputs."nmqtt-master".ref = "flake-pinning";
  inputs."nmqtt-master".dir = "nimpkgs/n/nmqtt/master";

    inputs."nmqtt-0_1_0".type = "github";
  inputs."nmqtt-0_1_0".owner = "riinr";
  inputs."nmqtt-0_1_0".repo = "flake-nimble";
  inputs."nmqtt-0_1_0".ref = "flake-pinning";
  inputs."nmqtt-0_1_0".dir = "nimpkgs/n/nmqtt/0_1_0";

    inputs."nmqtt-v1_0_0".type = "github";
  inputs."nmqtt-v1_0_0".owner = "riinr";
  inputs."nmqtt-v1_0_0".repo = "flake-nimble";
  inputs."nmqtt-v1_0_0".ref = "flake-pinning";
  inputs."nmqtt-v1_0_0".dir = "nimpkgs/n/nmqtt/v1_0_0";

    inputs."nmqtt-v1_0_2".type = "github";
  inputs."nmqtt-v1_0_2".owner = "riinr";
  inputs."nmqtt-v1_0_2".repo = "flake-nimble";
  inputs."nmqtt-v1_0_2".ref = "flake-pinning";
  inputs."nmqtt-v1_0_2".dir = "nimpkgs/n/nmqtt/v1_0_2";

    inputs."nmqtt-v1_0_3".type = "github";
  inputs."nmqtt-v1_0_3".owner = "riinr";
  inputs."nmqtt-v1_0_3".repo = "flake-nimble";
  inputs."nmqtt-v1_0_3".ref = "flake-pinning";
  inputs."nmqtt-v1_0_3".dir = "nimpkgs/n/nmqtt/v1_0_3";

    inputs."nmqtt-v1_0_4".type = "github";
  inputs."nmqtt-v1_0_4".owner = "riinr";
  inputs."nmqtt-v1_0_4".repo = "flake-nimble";
  inputs."nmqtt-v1_0_4".ref = "flake-pinning";
  inputs."nmqtt-v1_0_4".dir = "nimpkgs/n/nmqtt/v1_0_4";

  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}