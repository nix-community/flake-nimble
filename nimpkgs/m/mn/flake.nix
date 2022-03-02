{
  description = ''A truly minimal concatenative programming language.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."mn-master".type = "github";
  inputs."mn-master".owner = "riinr";
  inputs."mn-master".repo = "flake-nimble";
  inputs."mn-master".ref = "flake-pinning";
  inputs."mn-master".dir = "nimpkgs/m/mn/master";
  inputs."mn-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."mn-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."mn-v0_1_0".type = "github";
  inputs."mn-v0_1_0".owner = "riinr";
  inputs."mn-v0_1_0".repo = "flake-nimble";
  inputs."mn-v0_1_0".ref = "flake-pinning";
  inputs."mn-v0_1_0".dir = "nimpkgs/m/mn/v0_1_0";
  inputs."mn-v0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."mn-v0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."mn-v0_2_0".type = "github";
  inputs."mn-v0_2_0".owner = "riinr";
  inputs."mn-v0_2_0".repo = "flake-nimble";
  inputs."mn-v0_2_0".ref = "flake-pinning";
  inputs."mn-v0_2_0".dir = "nimpkgs/m/mn/v0_2_0";
  inputs."mn-v0_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."mn-v0_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}