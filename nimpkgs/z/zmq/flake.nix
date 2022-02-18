{
  description = ''ZeroMQ 4 wrapper'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
    inputs."zmq-master".type = "github";
  inputs."zmq-master".owner = "riinr";
  inputs."zmq-master".repo = "flake-nimble";
  inputs."zmq-master".ref = "flake-pinning";
  inputs."zmq-master".dir = "nimpkgs/z/zmq/master";

    inputs."zmq-v0_2_2".type = "github";
  inputs."zmq-v0_2_2".owner = "riinr";
  inputs."zmq-v0_2_2".repo = "flake-nimble";
  inputs."zmq-v0_2_2".ref = "flake-pinning";
  inputs."zmq-v0_2_2".dir = "nimpkgs/z/zmq/v0_2_2";

    inputs."zmq-v0_3_1".type = "github";
  inputs."zmq-v0_3_1".owner = "riinr";
  inputs."zmq-v0_3_1".repo = "flake-nimble";
  inputs."zmq-v0_3_1".ref = "flake-pinning";
  inputs."zmq-v0_3_1".dir = "nimpkgs/z/zmq/v0_3_1";

    inputs."zmq-v0_3_4".type = "github";
  inputs."zmq-v0_3_4".owner = "riinr";
  inputs."zmq-v0_3_4".repo = "flake-nimble";
  inputs."zmq-v0_3_4".ref = "flake-pinning";
  inputs."zmq-v0_3_4".dir = "nimpkgs/z/zmq/v0_3_4";

    inputs."zmq-v1_0_1".type = "github";
  inputs."zmq-v1_0_1".owner = "riinr";
  inputs."zmq-v1_0_1".repo = "flake-nimble";
  inputs."zmq-v1_0_1".ref = "flake-pinning";
  inputs."zmq-v1_0_1".dir = "nimpkgs/z/zmq/v1_0_1";

    inputs."zmq-v1_2_0".type = "github";
  inputs."zmq-v1_2_0".owner = "riinr";
  inputs."zmq-v1_2_0".repo = "flake-nimble";
  inputs."zmq-v1_2_0".ref = "flake-pinning";
  inputs."zmq-v1_2_0".dir = "nimpkgs/z/zmq/v1_2_0";

    inputs."zmq-v1_2_1".type = "github";
  inputs."zmq-v1_2_1".owner = "riinr";
  inputs."zmq-v1_2_1".repo = "flake-nimble";
  inputs."zmq-v1_2_1".ref = "flake-pinning";
  inputs."zmq-v1_2_1".dir = "nimpkgs/z/zmq/v1_2_1";

  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}