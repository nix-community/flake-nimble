{
  description = ''envconfig provides a function to get config objects from environment variables.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."envconfig-master".type = "github";
  inputs."envconfig-master".owner = "riinr";
  inputs."envconfig-master".repo = "flake-nimble";
  inputs."envconfig-master".ref = "flake-pinning";
  inputs."envconfig-master".dir = "nimpkgs/e/envconfig/master";
  inputs."envconfig-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."envconfig-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."envconfig-v1_0_0".type = "github";
  inputs."envconfig-v1_0_0".owner = "riinr";
  inputs."envconfig-v1_0_0".repo = "flake-nimble";
  inputs."envconfig-v1_0_0".ref = "flake-pinning";
  inputs."envconfig-v1_0_0".dir = "nimpkgs/e/envconfig/v1_0_0";
  inputs."envconfig-v1_0_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."envconfig-v1_0_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."envconfig-v1_0_1".type = "github";
  inputs."envconfig-v1_0_1".owner = "riinr";
  inputs."envconfig-v1_0_1".repo = "flake-nimble";
  inputs."envconfig-v1_0_1".ref = "flake-pinning";
  inputs."envconfig-v1_0_1".dir = "nimpkgs/e/envconfig/v1_0_1";
  inputs."envconfig-v1_0_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."envconfig-v1_0_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."envconfig-v1_0_2".type = "github";
  inputs."envconfig-v1_0_2".owner = "riinr";
  inputs."envconfig-v1_0_2".repo = "flake-nimble";
  inputs."envconfig-v1_0_2".ref = "flake-pinning";
  inputs."envconfig-v1_0_2".dir = "nimpkgs/e/envconfig/v1_0_2";
  inputs."envconfig-v1_0_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."envconfig-v1_0_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."envconfig-v1_1_0".type = "github";
  inputs."envconfig-v1_1_0".owner = "riinr";
  inputs."envconfig-v1_1_0".repo = "flake-nimble";
  inputs."envconfig-v1_1_0".ref = "flake-pinning";
  inputs."envconfig-v1_1_0".dir = "nimpkgs/e/envconfig/v1_1_0";
  inputs."envconfig-v1_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."envconfig-v1_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}