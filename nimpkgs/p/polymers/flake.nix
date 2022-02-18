{
  description = ''A library of components and systems for use with the Polymorph ECS'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
    inputs."polymers-master".type = "github";
  inputs."polymers-master".owner = "riinr";
  inputs."polymers-master".repo = "flake-nimble";
  inputs."polymers-master".ref = "flake-pinning";
  inputs."polymers-master".dir = "nimpkgs/p/polymers/master";

    inputs."Polymers-0_2_0".type = "github";
  inputs."Polymers-0_2_0".owner = "riinr";
  inputs."Polymers-0_2_0".repo = "flake-nimble";
  inputs."Polymers-0_2_0".ref = "flake-pinning";
  inputs."Polymers-0_2_0".dir = "nimpkgs/p/polymers/0_2_0";

    inputs."polymers-v0_1_0".type = "github";
  inputs."polymers-v0_1_0".owner = "riinr";
  inputs."polymers-v0_1_0".repo = "flake-nimble";
  inputs."polymers-v0_1_0".ref = "flake-pinning";
  inputs."polymers-v0_1_0".dir = "nimpkgs/p/polymers/v0_1_0";

    inputs."polymers-v0_1_1".type = "github";
  inputs."polymers-v0_1_1".owner = "riinr";
  inputs."polymers-v0_1_1".repo = "flake-nimble";
  inputs."polymers-v0_1_1".ref = "flake-pinning";
  inputs."polymers-v0_1_1".dir = "nimpkgs/p/polymers/v0_1_1";

    inputs."Polymers-v0_3_0".type = "github";
  inputs."Polymers-v0_3_0".owner = "riinr";
  inputs."Polymers-v0_3_0".repo = "flake-nimble";
  inputs."Polymers-v0_3_0".ref = "flake-pinning";
  inputs."Polymers-v0_3_0".dir = "nimpkgs/p/polymers/v0_3_0";

    inputs."polymers-v0_3_1".type = "github";
  inputs."polymers-v0_3_1".owner = "riinr";
  inputs."polymers-v0_3_1".repo = "flake-nimble";
  inputs."polymers-v0_3_1".ref = "flake-pinning";
  inputs."polymers-v0_3_1".dir = "nimpkgs/p/polymers/v0_3_1";

  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}