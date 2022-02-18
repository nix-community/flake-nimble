{
  description = ''Drag and drop source / target'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
    inputs."dnd-master".type = "github";
  inputs."dnd-master".owner = "riinr";
  inputs."dnd-master".repo = "flake-nimble";
  inputs."dnd-master".ref = "flake-pinning";
  inputs."dnd-master".dir = "nimpkgs/d/dnd/master";

    inputs."dnd-v0_5_0".type = "github";
  inputs."dnd-v0_5_0".owner = "riinr";
  inputs."dnd-v0_5_0".repo = "flake-nimble";
  inputs."dnd-v0_5_0".ref = "flake-pinning";
  inputs."dnd-v0_5_0".dir = "nimpkgs/d/dnd/v0_5_0";

    inputs."dnd-v0_6_0".type = "github";
  inputs."dnd-v0_6_0".owner = "riinr";
  inputs."dnd-v0_6_0".repo = "flake-nimble";
  inputs."dnd-v0_6_0".ref = "flake-pinning";
  inputs."dnd-v0_6_0".dir = "nimpkgs/d/dnd/v0_6_0";

    inputs."dnd-v0_6_1".type = "github";
  inputs."dnd-v0_6_1".owner = "riinr";
  inputs."dnd-v0_6_1".repo = "flake-nimble";
  inputs."dnd-v0_6_1".ref = "flake-pinning";
  inputs."dnd-v0_6_1".dir = "nimpkgs/d/dnd/v0_6_1";

  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}