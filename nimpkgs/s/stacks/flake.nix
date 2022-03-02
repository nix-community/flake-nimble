{
  description = ''Pure Nim stack implementation based on sequences.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."stacks-master".type = "github";
  inputs."stacks-master".owner = "riinr";
  inputs."stacks-master".repo = "flake-nimble";
  inputs."stacks-master".ref = "flake-pinning";
  inputs."stacks-master".dir = "nimpkgs/s/stacks/master";
  inputs."stacks-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."stacks-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."stacks-0_4_0".type = "github";
  inputs."stacks-0_4_0".owner = "riinr";
  inputs."stacks-0_4_0".repo = "flake-nimble";
  inputs."stacks-0_4_0".ref = "flake-pinning";
  inputs."stacks-0_4_0".dir = "nimpkgs/s/stacks/0_4_0";
  inputs."stacks-0_4_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."stacks-0_4_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."stacks-0_4_1".type = "github";
  inputs."stacks-0_4_1".owner = "riinr";
  inputs."stacks-0_4_1".repo = "flake-nimble";
  inputs."stacks-0_4_1".ref = "flake-pinning";
  inputs."stacks-0_4_1".dir = "nimpkgs/s/stacks/0_4_1";
  inputs."stacks-0_4_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."stacks-0_4_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."stacks-0_4_2".type = "github";
  inputs."stacks-0_4_2".owner = "riinr";
  inputs."stacks-0_4_2".repo = "flake-nimble";
  inputs."stacks-0_4_2".ref = "flake-pinning";
  inputs."stacks-0_4_2".dir = "nimpkgs/s/stacks/0_4_2";
  inputs."stacks-0_4_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."stacks-0_4_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}