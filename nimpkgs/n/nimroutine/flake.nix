{
  description = ''A go routine like nim implementation'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."nimroutine-develop".type = "github";
  inputs."nimroutine-develop".owner = "riinr";
  inputs."nimroutine-develop".repo = "flake-nimble";
  inputs."nimroutine-develop".ref = "flake-pinning";
  inputs."nimroutine-develop".dir = "nimpkgs/n/nimroutine/develop";
  inputs."nimroutine-develop".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimroutine-develop".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."nimroutine-master".type = "github";
  inputs."nimroutine-master".owner = "riinr";
  inputs."nimroutine-master".repo = "flake-nimble";
  inputs."nimroutine-master".ref = "flake-pinning";
  inputs."nimroutine-master".dir = "nimpkgs/n/nimroutine/master";
  inputs."nimroutine-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimroutine-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."nimroutine-v0_1_0".type = "github";
  inputs."nimroutine-v0_1_0".owner = "riinr";
  inputs."nimroutine-v0_1_0".repo = "flake-nimble";
  inputs."nimroutine-v0_1_0".ref = "flake-pinning";
  inputs."nimroutine-v0_1_0".dir = "nimpkgs/n/nimroutine/v0_1_0";
  inputs."nimroutine-v0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimroutine-v0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."nimroutine-v0_1_1".type = "github";
  inputs."nimroutine-v0_1_1".owner = "riinr";
  inputs."nimroutine-v0_1_1".repo = "flake-nimble";
  inputs."nimroutine-v0_1_1".ref = "flake-pinning";
  inputs."nimroutine-v0_1_1".dir = "nimpkgs/n/nimroutine/v0_1_1";
  inputs."nimroutine-v0_1_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimroutine-v0_1_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."nimroutine-v0_1_2".type = "github";
  inputs."nimroutine-v0_1_2".owner = "riinr";
  inputs."nimroutine-v0_1_2".repo = "flake-nimble";
  inputs."nimroutine-v0_1_2".ref = "flake-pinning";
  inputs."nimroutine-v0_1_2".dir = "nimpkgs/n/nimroutine/v0_1_2";
  inputs."nimroutine-v0_1_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimroutine-v0_1_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}