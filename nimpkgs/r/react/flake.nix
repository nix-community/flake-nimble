{
  description = ''React.js bindings for Nim'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
    inputs."react-master".type = "github";
  inputs."react-master".owner = "riinr";
  inputs."react-master".repo = "flake-nimble";
  inputs."react-master".ref = "flake-pinning";
  inputs."react-master".dir = "nimpkgs/r/react/master";

    inputs."react-0_1_0".type = "github";
  inputs."react-0_1_0".owner = "riinr";
  inputs."react-0_1_0".repo = "flake-nimble";
  inputs."react-0_1_0".ref = "flake-pinning";
  inputs."react-0_1_0".dir = "nimpkgs/r/react/0_1_0";

    inputs."react-0_1_1".type = "github";
  inputs."react-0_1_1".owner = "riinr";
  inputs."react-0_1_1".repo = "flake-nimble";
  inputs."react-0_1_1".ref = "flake-pinning";
  inputs."react-0_1_1".dir = "nimpkgs/r/react/0_1_1";

    inputs."react-0_1_2".type = "github";
  inputs."react-0_1_2".owner = "riinr";
  inputs."react-0_1_2".repo = "flake-nimble";
  inputs."react-0_1_2".ref = "flake-pinning";
  inputs."react-0_1_2".dir = "nimpkgs/r/react/0_1_2";

    inputs."react-0_2_0".type = "github";
  inputs."react-0_2_0".owner = "riinr";
  inputs."react-0_2_0".repo = "flake-nimble";
  inputs."react-0_2_0".ref = "flake-pinning";
  inputs."react-0_2_0".dir = "nimpkgs/r/react/0_2_0";

  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}