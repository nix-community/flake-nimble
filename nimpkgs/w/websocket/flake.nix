{
  description = ''websockets for nim'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
    inputs."websocket-master".type = "github";
  inputs."websocket-master".owner = "riinr";
  inputs."websocket-master".repo = "flake-nimble";
  inputs."websocket-master".ref = "flake-pinning";
  inputs."websocket-master".dir = "nimpkgs/w/websocket/master";

    inputs."websocket-0_1_0".type = "github";
  inputs."websocket-0_1_0".owner = "riinr";
  inputs."websocket-0_1_0".repo = "flake-nimble";
  inputs."websocket-0_1_0".ref = "flake-pinning";
  inputs."websocket-0_1_0".dir = "nimpkgs/w/websocket/0_1_0";

    inputs."websocket-0_1_1".type = "github";
  inputs."websocket-0_1_1".owner = "riinr";
  inputs."websocket-0_1_1".repo = "flake-nimble";
  inputs."websocket-0_1_1".ref = "flake-pinning";
  inputs."websocket-0_1_1".dir = "nimpkgs/w/websocket/0_1_1";

    inputs."websocket-0_2_0".type = "github";
  inputs."websocket-0_2_0".owner = "riinr";
  inputs."websocket-0_2_0".repo = "flake-nimble";
  inputs."websocket-0_2_0".ref = "flake-pinning";
  inputs."websocket-0_2_0".dir = "nimpkgs/w/websocket/0_2_0";

    inputs."websocket-0_2_1".type = "github";
  inputs."websocket-0_2_1".owner = "riinr";
  inputs."websocket-0_2_1".repo = "flake-nimble";
  inputs."websocket-0_2_1".ref = "flake-pinning";
  inputs."websocket-0_2_1".dir = "nimpkgs/w/websocket/0_2_1";

    inputs."websocket-0_3_0".type = "github";
  inputs."websocket-0_3_0".owner = "riinr";
  inputs."websocket-0_3_0".repo = "flake-nimble";
  inputs."websocket-0_3_0".ref = "flake-pinning";
  inputs."websocket-0_3_0".dir = "nimpkgs/w/websocket/0_3_0";

    inputs."websocket-0_3_1".type = "github";
  inputs."websocket-0_3_1".owner = "riinr";
  inputs."websocket-0_3_1".repo = "flake-nimble";
  inputs."websocket-0_3_1".ref = "flake-pinning";
  inputs."websocket-0_3_1".dir = "nimpkgs/w/websocket/0_3_1";

    inputs."websocket-0_3_2".type = "github";
  inputs."websocket-0_3_2".owner = "riinr";
  inputs."websocket-0_3_2".repo = "flake-nimble";
  inputs."websocket-0_3_2".ref = "flake-pinning";
  inputs."websocket-0_3_2".dir = "nimpkgs/w/websocket/0_3_2";

    inputs."websocket-0_3_3".type = "github";
  inputs."websocket-0_3_3".owner = "riinr";
  inputs."websocket-0_3_3".repo = "flake-nimble";
  inputs."websocket-0_3_3".ref = "flake-pinning";
  inputs."websocket-0_3_3".dir = "nimpkgs/w/websocket/0_3_3";

    inputs."websocket-0_3_4".type = "github";
  inputs."websocket-0_3_4".owner = "riinr";
  inputs."websocket-0_3_4".repo = "flake-nimble";
  inputs."websocket-0_3_4".ref = "flake-pinning";
  inputs."websocket-0_3_4".dir = "nimpkgs/w/websocket/0_3_4";

    inputs."websocket-0_3_5".type = "github";
  inputs."websocket-0_3_5".owner = "riinr";
  inputs."websocket-0_3_5".repo = "flake-nimble";
  inputs."websocket-0_3_5".ref = "flake-pinning";
  inputs."websocket-0_3_5".dir = "nimpkgs/w/websocket/0_3_5";

    inputs."websocket-0_3_6".type = "github";
  inputs."websocket-0_3_6".owner = "riinr";
  inputs."websocket-0_3_6".repo = "flake-nimble";
  inputs."websocket-0_3_6".ref = "flake-pinning";
  inputs."websocket-0_3_6".dir = "nimpkgs/w/websocket/0_3_6";

    inputs."websocket-0_4_0".type = "github";
  inputs."websocket-0_4_0".owner = "riinr";
  inputs."websocket-0_4_0".repo = "flake-nimble";
  inputs."websocket-0_4_0".ref = "flake-pinning";
  inputs."websocket-0_4_0".dir = "nimpkgs/w/websocket/0_4_0";

    inputs."websocket-0_4_1".type = "github";
  inputs."websocket-0_4_1".owner = "riinr";
  inputs."websocket-0_4_1".repo = "flake-nimble";
  inputs."websocket-0_4_1".ref = "flake-pinning";
  inputs."websocket-0_4_1".dir = "nimpkgs/w/websocket/0_4_1";

    inputs."websocket-0_4_2".type = "github";
  inputs."websocket-0_4_2".owner = "riinr";
  inputs."websocket-0_4_2".repo = "flake-nimble";
  inputs."websocket-0_4_2".ref = "flake-pinning";
  inputs."websocket-0_4_2".dir = "nimpkgs/w/websocket/0_4_2";

    inputs."websocket-0_5_0".type = "github";
  inputs."websocket-0_5_0".owner = "riinr";
  inputs."websocket-0_5_0".repo = "flake-nimble";
  inputs."websocket-0_5_0".ref = "flake-pinning";
  inputs."websocket-0_5_0".dir = "nimpkgs/w/websocket/0_5_0";

  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}