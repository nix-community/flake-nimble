{
  description = ''Trait system for nim'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
    inputs."nimtraits-master".type = "github";
  inputs."nimtraits-master".owner = "riinr";
  inputs."nimtraits-master".repo = "flake-nimble";
  inputs."nimtraits-master".ref = "flake-pinning";
  inputs."nimtraits-master".dir = "nimpkgs/n/nimtraits/master";

    inputs."nimtraits-v0_1_2".type = "github";
  inputs."nimtraits-v0_1_2".owner = "riinr";
  inputs."nimtraits-v0_1_2".repo = "flake-nimble";
  inputs."nimtraits-v0_1_2".ref = "flake-pinning";
  inputs."nimtraits-v0_1_2".dir = "nimpkgs/n/nimtraits/v0_1_2";

    inputs."nimtraits-v0_1_3".type = "github";
  inputs."nimtraits-v0_1_3".owner = "riinr";
  inputs."nimtraits-v0_1_3".repo = "flake-nimble";
  inputs."nimtraits-v0_1_3".ref = "flake-pinning";
  inputs."nimtraits-v0_1_3".dir = "nimpkgs/n/nimtraits/v0_1_3";

    inputs."nimtraits-v0_1_4".type = "github";
  inputs."nimtraits-v0_1_4".owner = "riinr";
  inputs."nimtraits-v0_1_4".repo = "flake-nimble";
  inputs."nimtraits-v0_1_4".ref = "flake-pinning";
  inputs."nimtraits-v0_1_4".dir = "nimpkgs/n/nimtraits/v0_1_4";

    inputs."nimtraits-v0_1_5".type = "github";
  inputs."nimtraits-v0_1_5".owner = "riinr";
  inputs."nimtraits-v0_1_5".repo = "flake-nimble";
  inputs."nimtraits-v0_1_5".ref = "flake-pinning";
  inputs."nimtraits-v0_1_5".dir = "nimpkgs/n/nimtraits/v0_1_5";

  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}