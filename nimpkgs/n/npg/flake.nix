{
  description = ''Password generator in Nim'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."npg-master".type = "github";
  inputs."npg-master".owner = "riinr";
  inputs."npg-master".repo = "flake-nimble";
  inputs."npg-master".ref = "flake-pinning";
  inputs."npg-master".dir = "nimpkgs/n/npg/master";
  inputs."npg-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."npg-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."npg-0_1_0".type = "github";
  inputs."npg-0_1_0".owner = "riinr";
  inputs."npg-0_1_0".repo = "flake-nimble";
  inputs."npg-0_1_0".ref = "flake-pinning";
  inputs."npg-0_1_0".dir = "nimpkgs/n/npg/0_1_0";
  inputs."npg-0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."npg-0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."npg-0_2_0".type = "github";
  inputs."npg-0_2_0".owner = "riinr";
  inputs."npg-0_2_0".repo = "flake-nimble";
  inputs."npg-0_2_0".ref = "flake-pinning";
  inputs."npg-0_2_0".dir = "nimpkgs/n/npg/0_2_0";
  inputs."npg-0_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."npg-0_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}