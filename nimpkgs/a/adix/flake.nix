{
  description = ''An Adaptive Index Library For Nim'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."adix-master".type = "github";
  inputs."adix-master".owner = "riinr";
  inputs."adix-master".repo = "flake-nimble";
  inputs."adix-master".ref = "flake-pinning";
  inputs."adix-master".dir = "nimpkgs/a/adix/master";
  inputs."adix-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."adix-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."adix-0_2_0".type = "github";
  inputs."adix-0_2_0".owner = "riinr";
  inputs."adix-0_2_0".repo = "flake-nimble";
  inputs."adix-0_2_0".ref = "flake-pinning";
  inputs."adix-0_2_0".dir = "nimpkgs/a/adix/0_2_0";
  inputs."adix-0_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."adix-0_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."adix-0_2_1".type = "github";
  inputs."adix-0_2_1".owner = "riinr";
  inputs."adix-0_2_1".repo = "flake-nimble";
  inputs."adix-0_2_1".ref = "flake-pinning";
  inputs."adix-0_2_1".dir = "nimpkgs/a/adix/0_2_1";
  inputs."adix-0_2_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."adix-0_2_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."adix-v0_3_0".type = "github";
  inputs."adix-v0_3_0".owner = "riinr";
  inputs."adix-v0_3_0".repo = "flake-nimble";
  inputs."adix-v0_3_0".ref = "flake-pinning";
  inputs."adix-v0_3_0".dir = "nimpkgs/a/adix/v0_3_0";
  inputs."adix-v0_3_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."adix-v0_3_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}