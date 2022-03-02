{
  description = ''Very simple PostgreSQL async api for nim.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."pg-master".type = "github";
  inputs."pg-master".owner = "riinr";
  inputs."pg-master".repo = "flake-nimble";
  inputs."pg-master".ref = "flake-pinning";
  inputs."pg-master".dir = "nimpkgs/p/pg/master";
  inputs."pg-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."pg-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."pg-0_1_0".type = "github";
  inputs."pg-0_1_0".owner = "riinr";
  inputs."pg-0_1_0".repo = "flake-nimble";
  inputs."pg-0_1_0".ref = "flake-pinning";
  inputs."pg-0_1_0".dir = "nimpkgs/p/pg/0_1_0";
  inputs."pg-0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."pg-0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."pg-v0_1_0".type = "github";
  inputs."pg-v0_1_0".owner = "riinr";
  inputs."pg-v0_1_0".repo = "flake-nimble";
  inputs."pg-v0_1_0".ref = "flake-pinning";
  inputs."pg-v0_1_0".dir = "nimpkgs/p/pg/v0_1_0";
  inputs."pg-v0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."pg-v0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}