{
  description = ''A compile-time, compact, fast, without allocation, state-machine generator.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
    inputs."synthesis-master".type = "github";
  inputs."synthesis-master".owner = "riinr";
  inputs."synthesis-master".repo = "flake-nimble";
  inputs."synthesis-master".ref = "flake-pinning";
  inputs."synthesis-master".dir = "nimpkgs/s/synthesis/master";

    inputs."synthesis-v0_1_0".type = "github";
  inputs."synthesis-v0_1_0".owner = "riinr";
  inputs."synthesis-v0_1_0".repo = "flake-nimble";
  inputs."synthesis-v0_1_0".ref = "flake-pinning";
  inputs."synthesis-v0_1_0".dir = "nimpkgs/s/synthesis/v0_1_0";

    inputs."synthesis-v0_2_0".type = "github";
  inputs."synthesis-v0_2_0".owner = "riinr";
  inputs."synthesis-v0_2_0".repo = "flake-nimble";
  inputs."synthesis-v0_2_0".ref = "flake-pinning";
  inputs."synthesis-v0_2_0".dir = "nimpkgs/s/synthesis/v0_2_0";

  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}