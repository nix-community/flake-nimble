{
  description = ''Create ICS files for email invites, eg. invite.ics'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."nimics-main".type = "github";
  inputs."nimics-main".owner = "riinr";
  inputs."nimics-main".repo = "flake-nimble";
  inputs."nimics-main".ref = "flake-pinning";
  inputs."nimics-main".dir = "nimpkgs/n/nimics/main";
  inputs."nimics-main".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimics-main".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."nimics-0_2_0".type = "github";
  inputs."nimics-0_2_0".owner = "riinr";
  inputs."nimics-0_2_0".repo = "flake-nimble";
  inputs."nimics-0_2_0".ref = "flake-pinning";
  inputs."nimics-0_2_0".dir = "nimpkgs/n/nimics/0_2_0";
  inputs."nimics-0_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimics-0_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."nimics-v0_1_0".type = "github";
  inputs."nimics-v0_1_0".owner = "riinr";
  inputs."nimics-v0_1_0".repo = "flake-nimble";
  inputs."nimics-v0_1_0".ref = "flake-pinning";
  inputs."nimics-v0_1_0".dir = "nimpkgs/n/nimics/v0_1_0";
  inputs."nimics-v0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimics-v0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}