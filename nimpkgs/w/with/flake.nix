{
  description = ''Simple 'with' macro for Nim'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."with-master".type = "github";
  inputs."with-master".owner = "riinr";
  inputs."with-master".repo = "flake-nimble";
  inputs."with-master".ref = "flake-pinning";
  inputs."with-master".dir = "nimpkgs/w/with/master";
  inputs."with-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."with-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."with-0_4_0".type = "github";
  inputs."with-0_4_0".owner = "riinr";
  inputs."with-0_4_0".repo = "flake-nimble";
  inputs."with-0_4_0".ref = "flake-pinning";
  inputs."with-0_4_0".dir = "nimpkgs/w/with/0_4_0";
  inputs."with-0_4_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."with-0_4_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."with-v0_1_0".type = "github";
  inputs."with-v0_1_0".owner = "riinr";
  inputs."with-v0_1_0".repo = "flake-nimble";
  inputs."with-v0_1_0".ref = "flake-pinning";
  inputs."with-v0_1_0".dir = "nimpkgs/w/with/v0_1_0";
  inputs."with-v0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."with-v0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."with-v0_2_0".type = "github";
  inputs."with-v0_2_0".owner = "riinr";
  inputs."with-v0_2_0".repo = "flake-nimble";
  inputs."with-v0_2_0".ref = "flake-pinning";
  inputs."with-v0_2_0".dir = "nimpkgs/w/with/v0_2_0";
  inputs."with-v0_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."with-v0_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}