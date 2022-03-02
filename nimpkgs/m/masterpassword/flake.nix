{
  description = ''Master Password algorith implementation'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."masterpassword-master".type = "github";
  inputs."masterpassword-master".owner = "riinr";
  inputs."masterpassword-master".repo = "flake-nimble";
  inputs."masterpassword-master".ref = "flake-pinning";
  inputs."masterpassword-master".dir = "nimpkgs/m/masterpassword/master";
  inputs."masterpassword-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."masterpassword-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."masterpassword-v0_1_0".type = "github";
  inputs."masterpassword-v0_1_0".owner = "riinr";
  inputs."masterpassword-v0_1_0".repo = "flake-nimble";
  inputs."masterpassword-v0_1_0".ref = "flake-pinning";
  inputs."masterpassword-v0_1_0".dir = "nimpkgs/m/masterpassword/v0_1_0";
  inputs."masterpassword-v0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."masterpassword-v0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."masterpassword-v0_2_0".type = "github";
  inputs."masterpassword-v0_2_0".owner = "riinr";
  inputs."masterpassword-v0_2_0".repo = "flake-nimble";
  inputs."masterpassword-v0_2_0".ref = "flake-pinning";
  inputs."masterpassword-v0_2_0".dir = "nimpkgs/m/masterpassword/v0_2_0";
  inputs."masterpassword-v0_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."masterpassword-v0_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."masterpassword-v0_2_1".type = "github";
  inputs."masterpassword-v0_2_1".owner = "riinr";
  inputs."masterpassword-v0_2_1".repo = "flake-nimble";
  inputs."masterpassword-v0_2_1".ref = "flake-pinning";
  inputs."masterpassword-v0_2_1".dir = "nimpkgs/m/masterpassword/v0_2_1";
  inputs."masterpassword-v0_2_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."masterpassword-v0_2_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}