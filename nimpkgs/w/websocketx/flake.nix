{
  description = ''Websocket for httpx.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
    inputs."websocketx-master".type = "github";
  inputs."websocketx-master".owner = "riinr";
  inputs."websocketx-master".repo = "flake-nimble";
  inputs."websocketx-master".ref = "flake-pinning";
  inputs."websocketx-master".dir = "nimpkgs/w/websocketx/master";

    inputs."websocketx-v0_1_0".type = "github";
  inputs."websocketx-v0_1_0".owner = "riinr";
  inputs."websocketx-v0_1_0".repo = "flake-nimble";
  inputs."websocketx-v0_1_0".ref = "flake-pinning";
  inputs."websocketx-v0_1_0".dir = "nimpkgs/w/websocketx/v0_1_0";

    inputs."websocketx-v0_1_2".type = "github";
  inputs."websocketx-v0_1_2".owner = "riinr";
  inputs."websocketx-v0_1_2".repo = "flake-nimble";
  inputs."websocketx-v0_1_2".ref = "flake-pinning";
  inputs."websocketx-v0_1_2".dir = "nimpkgs/w/websocketx/v0_1_2";

  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}