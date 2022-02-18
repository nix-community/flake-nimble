{
  description = ''GitIgnore Generation Interface'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  
    inputs."gigi-v0_1_0".type = "github";
  inputs."gigi-v0_1_0".owner = "riinr";
  inputs."gigi-v0_1_0".repo = "flake-nimble";
  inputs."gigi-v0_1_0".ref = "flake-pinning";
  inputs."gigi-v0_1_0".dir = "nimpkgs/g/gigi/v0_1_0";

    inputs."gigi-v0_1_1".type = "github";
  inputs."gigi-v0_1_1".owner = "riinr";
  inputs."gigi-v0_1_1".repo = "flake-nimble";
  inputs."gigi-v0_1_1".ref = "flake-pinning";
  inputs."gigi-v0_1_1".dir = "nimpkgs/g/gigi/v0_1_1";

    inputs."gigi-v0_2_0".type = "github";
  inputs."gigi-v0_2_0".owner = "riinr";
  inputs."gigi-v0_2_0".repo = "flake-nimble";
  inputs."gigi-v0_2_0".ref = "flake-pinning";
  inputs."gigi-v0_2_0".dir = "nimpkgs/g/gigi/v0_2_0";

    inputs."gigi-v0_2_1".type = "github";
  inputs."gigi-v0_2_1".owner = "riinr";
  inputs."gigi-v0_2_1".repo = "flake-nimble";
  inputs."gigi-v0_2_1".ref = "flake-pinning";
  inputs."gigi-v0_2_1".dir = "nimpkgs/g/gigi/v0_2_1";

  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}