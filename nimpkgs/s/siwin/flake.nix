{
  description = ''Simple window maker.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."siwin-master".type = "github";
  inputs."siwin-master".owner = "riinr";
  inputs."siwin-master".repo = "flake-nimble";
  inputs."siwin-master".ref = "flake-pinning";
  inputs."siwin-master".dir = "nimpkgs/s/siwin/master";
  inputs."siwin-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."siwin-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."siwin-0_4".type = "github";
  inputs."siwin-0_4".owner = "riinr";
  inputs."siwin-0_4".repo = "flake-nimble";
  inputs."siwin-0_4".ref = "flake-pinning";
  inputs."siwin-0_4".dir = "nimpkgs/s/siwin/0_4";
  inputs."siwin-0_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."siwin-0_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."siwin-v0_3".type = "github";
  inputs."siwin-v0_3".owner = "riinr";
  inputs."siwin-v0_3".repo = "flake-nimble";
  inputs."siwin-v0_3".ref = "flake-pinning";
  inputs."siwin-v0_3".dir = "nimpkgs/s/siwin/v0_3";
  inputs."siwin-v0_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."siwin-v0_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}