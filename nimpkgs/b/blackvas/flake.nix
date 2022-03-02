{
  description = ''declarative UI framework for building Canvas'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."blackvas-master".type = "github";
  inputs."blackvas-master".owner = "riinr";
  inputs."blackvas-master".repo = "flake-nimble";
  inputs."blackvas-master".ref = "flake-pinning";
  inputs."blackvas-master".dir = "nimpkgs/b/blackvas/master";
  inputs."blackvas-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."blackvas-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."blackvas-0_1_0".type = "github";
  inputs."blackvas-0_1_0".owner = "riinr";
  inputs."blackvas-0_1_0".repo = "flake-nimble";
  inputs."blackvas-0_1_0".ref = "flake-pinning";
  inputs."blackvas-0_1_0".dir = "nimpkgs/b/blackvas/0_1_0";
  inputs."blackvas-0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."blackvas-0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."blackvas-0_2_0".type = "github";
  inputs."blackvas-0_2_0".owner = "riinr";
  inputs."blackvas-0_2_0".repo = "flake-nimble";
  inputs."blackvas-0_2_0".ref = "flake-pinning";
  inputs."blackvas-0_2_0".dir = "nimpkgs/b/blackvas/0_2_0";
  inputs."blackvas-0_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."blackvas-0_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}