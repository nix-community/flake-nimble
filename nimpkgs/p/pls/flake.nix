{
  description = ''A simple but powerful task runner that lets you define your own commands by editing a YAML configuration file.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."pls-master".type = "github";
  inputs."pls-master".owner = "riinr";
  inputs."pls-master".repo = "flake-nimble";
  inputs."pls-master".ref = "flake-pinning";
  inputs."pls-master".dir = "nimpkgs/p/pls/master";
  inputs."pls-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."pls-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."pls-v1_0_0".type = "github";
  inputs."pls-v1_0_0".owner = "riinr";
  inputs."pls-v1_0_0".repo = "flake-nimble";
  inputs."pls-v1_0_0".ref = "flake-pinning";
  inputs."pls-v1_0_0".dir = "nimpkgs/p/pls/v1_0_0";
  inputs."pls-v1_0_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."pls-v1_0_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}