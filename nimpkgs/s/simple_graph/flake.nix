{
  description = ''Simple Graph Library'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
    inputs."simple_graph-master".type = "github";
  inputs."simple_graph-master".owner = "riinr";
  inputs."simple_graph-master".repo = "flake-nimble";
  inputs."simple_graph-master".ref = "flake-pinning";
  inputs."simple_graph-master".dir = "nimpkgs/s/simple_graph/master";

    inputs."simple_graph-v0_1_0".type = "github";
  inputs."simple_graph-v0_1_0".owner = "riinr";
  inputs."simple_graph-v0_1_0".repo = "flake-nimble";
  inputs."simple_graph-v0_1_0".ref = "flake-pinning";
  inputs."simple_graph-v0_1_0".dir = "nimpkgs/s/simple_graph/v0_1_0";

  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}