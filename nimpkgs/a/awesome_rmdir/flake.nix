{
  description = ''Command to remove acceptably empty directories.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."awesome_rmdir-develop".type = "github";
  inputs."awesome_rmdir-develop".owner = "riinr";
  inputs."awesome_rmdir-develop".repo = "flake-nimble";
  inputs."awesome_rmdir-develop".ref = "flake-pinning";
  inputs."awesome_rmdir-develop".dir = "nimpkgs/a/awesome_rmdir/develop";
  inputs."awesome_rmdir-develop".inputs.nixpkgs.follows = "nixpkgs";
  inputs."awesome_rmdir-develop".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."awesome_rmdir-master".type = "github";
  inputs."awesome_rmdir-master".owner = "riinr";
  inputs."awesome_rmdir-master".repo = "flake-nimble";
  inputs."awesome_rmdir-master".ref = "flake-pinning";
  inputs."awesome_rmdir-master".dir = "nimpkgs/a/awesome_rmdir/master";
  inputs."awesome_rmdir-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."awesome_rmdir-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."awesome_rmdir-v0_2_0".type = "github";
  inputs."awesome_rmdir-v0_2_0".owner = "riinr";
  inputs."awesome_rmdir-v0_2_0".repo = "flake-nimble";
  inputs."awesome_rmdir-v0_2_0".ref = "flake-pinning";
  inputs."awesome_rmdir-v0_2_0".dir = "nimpkgs/a/awesome_rmdir/v0_2_0";
  inputs."awesome_rmdir-v0_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."awesome_rmdir-v0_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."awesome_rmdir-v0_2_1".type = "github";
  inputs."awesome_rmdir-v0_2_1".owner = "riinr";
  inputs."awesome_rmdir-v0_2_1".repo = "flake-nimble";
  inputs."awesome_rmdir-v0_2_1".ref = "flake-pinning";
  inputs."awesome_rmdir-v0_2_1".dir = "nimpkgs/a/awesome_rmdir/v0_2_1";
  inputs."awesome_rmdir-v0_2_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."awesome_rmdir-v0_2_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}