{
  description = ''Light weight bookmark manager(delicious alternative)'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."skybook-master".type = "github";
  inputs."skybook-master".owner = "riinr";
  inputs."skybook-master".repo = "flake-nimble";
  inputs."skybook-master".ref = "flake-pinning";
  inputs."skybook-master".dir = "nimpkgs/s/skybook/master";
  inputs."skybook-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."skybook-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."skybook-1_0".type = "github";
  inputs."skybook-1_0".owner = "riinr";
  inputs."skybook-1_0".repo = "flake-nimble";
  inputs."skybook-1_0".ref = "flake-pinning";
  inputs."skybook-1_0".dir = "nimpkgs/s/skybook/1_0";
  inputs."skybook-1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."skybook-1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."skybook-1_0_1".type = "github";
  inputs."skybook-1_0_1".owner = "riinr";
  inputs."skybook-1_0_1".repo = "flake-nimble";
  inputs."skybook-1_0_1".ref = "flake-pinning";
  inputs."skybook-1_0_1".dir = "nimpkgs/s/skybook/1_0_1";
  inputs."skybook-1_0_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."skybook-1_0_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."skybook-1_0_2".type = "github";
  inputs."skybook-1_0_2".owner = "riinr";
  inputs."skybook-1_0_2".repo = "flake-nimble";
  inputs."skybook-1_0_2".ref = "flake-pinning";
  inputs."skybook-1_0_2".dir = "nimpkgs/s/skybook/1_0_2";
  inputs."skybook-1_0_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."skybook-1_0_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."skybook-1_0_3".type = "github";
  inputs."skybook-1_0_3".owner = "riinr";
  inputs."skybook-1_0_3".repo = "flake-nimble";
  inputs."skybook-1_0_3".ref = "flake-pinning";
  inputs."skybook-1_0_3".dir = "nimpkgs/s/skybook/1_0_3";
  inputs."skybook-1_0_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."skybook-1_0_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}