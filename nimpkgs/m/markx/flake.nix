{
  description = ''markx selects execution targets with editor and executes commands.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."markx-master".type = "github";
  inputs."markx-master".owner = "riinr";
  inputs."markx-master".repo = "flake-nimble";
  inputs."markx-master".ref = "flake-pinning";
  inputs."markx-master".dir = "nimpkgs/m/markx/master";
  inputs."markx-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."markx-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."markx-v1_0_0".type = "github";
  inputs."markx-v1_0_0".owner = "riinr";
  inputs."markx-v1_0_0".repo = "flake-nimble";
  inputs."markx-v1_0_0".ref = "flake-pinning";
  inputs."markx-v1_0_0".dir = "nimpkgs/m/markx/v1_0_0";
  inputs."markx-v1_0_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."markx-v1_0_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."markx-v1_0_1".type = "github";
  inputs."markx-v1_0_1".owner = "riinr";
  inputs."markx-v1_0_1".repo = "flake-nimble";
  inputs."markx-v1_0_1".ref = "flake-pinning";
  inputs."markx-v1_0_1".dir = "nimpkgs/m/markx/v1_0_1";
  inputs."markx-v1_0_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."markx-v1_0_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}