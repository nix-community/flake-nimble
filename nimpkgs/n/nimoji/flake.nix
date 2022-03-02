{
  description = ''🍕🍺 emoji support for Nim 👑 and the world 🌍'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."nimoji-master".type = "github";
  inputs."nimoji-master".owner = "riinr";
  inputs."nimoji-master".repo = "flake-nimble";
  inputs."nimoji-master".ref = "flake-pinning";
  inputs."nimoji-master".dir = "nimpkgs/n/nimoji/master";
  inputs."nimoji-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimoji-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."nimoji-v0_1_0".type = "github";
  inputs."nimoji-v0_1_0".owner = "riinr";
  inputs."nimoji-v0_1_0".repo = "flake-nimble";
  inputs."nimoji-v0_1_0".ref = "flake-pinning";
  inputs."nimoji-v0_1_0".dir = "nimpkgs/n/nimoji/v0_1_0";
  inputs."nimoji-v0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimoji-v0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."nimoji-v0_1_1".type = "github";
  inputs."nimoji-v0_1_1".owner = "riinr";
  inputs."nimoji-v0_1_1".repo = "flake-nimble";
  inputs."nimoji-v0_1_1".ref = "flake-pinning";
  inputs."nimoji-v0_1_1".dir = "nimpkgs/n/nimoji/v0_1_1";
  inputs."nimoji-v0_1_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimoji-v0_1_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."nimoji-v0_1_2".type = "github";
  inputs."nimoji-v0_1_2".owner = "riinr";
  inputs."nimoji-v0_1_2".repo = "flake-nimble";
  inputs."nimoji-v0_1_2".ref = "flake-pinning";
  inputs."nimoji-v0_1_2".dir = "nimpkgs/n/nimoji/v0_1_2";
  inputs."nimoji-v0_1_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimoji-v0_1_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."nimoji-v0_1_3".type = "github";
  inputs."nimoji-v0_1_3".owner = "riinr";
  inputs."nimoji-v0_1_3".repo = "flake-nimble";
  inputs."nimoji-v0_1_3".ref = "flake-pinning";
  inputs."nimoji-v0_1_3".dir = "nimpkgs/n/nimoji/v0_1_3";
  inputs."nimoji-v0_1_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimoji-v0_1_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."nimoji-v0_1_4".type = "github";
  inputs."nimoji-v0_1_4".owner = "riinr";
  inputs."nimoji-v0_1_4".repo = "flake-nimble";
  inputs."nimoji-v0_1_4".ref = "flake-pinning";
  inputs."nimoji-v0_1_4".dir = "nimpkgs/n/nimoji/v0_1_4";
  inputs."nimoji-v0_1_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimoji-v0_1_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}