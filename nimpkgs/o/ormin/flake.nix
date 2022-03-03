{
  description = ''Prepared SQL statement generator. A lightweight ORM.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."ormin-master".type = "github";
  inputs."ormin-master".owner = "riinr";
  inputs."ormin-master".repo = "flake-nimble";
  inputs."ormin-master".ref = "flake-pinning";
  inputs."ormin-master".dir = "nimpkgs/o/ormin/master";
  inputs."ormin-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ormin-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."ormin-0_1_0".type = "github";
  inputs."ormin-0_1_0".owner = "riinr";
  inputs."ormin-0_1_0".repo = "flake-nimble";
  inputs."ormin-0_1_0".ref = "flake-pinning";
  inputs."ormin-0_1_0".dir = "nimpkgs/o/ormin/0_1_0";
  inputs."ormin-0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ormin-0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}