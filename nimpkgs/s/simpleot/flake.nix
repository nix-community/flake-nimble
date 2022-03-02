{
  description = ''Simple OT wrapper'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."simpleot-master".type = "github";
  inputs."simpleot-master".owner = "riinr";
  inputs."simpleot-master".repo = "flake-nimble";
  inputs."simpleot-master".ref = "flake-pinning";
  inputs."simpleot-master".dir = "nimpkgs/s/simpleot/master";
  inputs."simpleot-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."simpleot-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."simpleot-0_4_1".type = "github";
  inputs."simpleot-0_4_1".owner = "riinr";
  inputs."simpleot-0_4_1".repo = "flake-nimble";
  inputs."simpleot-0_4_1".ref = "flake-pinning";
  inputs."simpleot-0_4_1".dir = "nimpkgs/s/simpleot/0_4_1";
  inputs."simpleot-0_4_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."simpleot-0_4_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."simpleot-v0_4_2".type = "github";
  inputs."simpleot-v0_4_2".owner = "riinr";
  inputs."simpleot-v0_4_2".repo = "flake-nimble";
  inputs."simpleot-v0_4_2".ref = "flake-pinning";
  inputs."simpleot-v0_4_2".dir = "nimpkgs/s/simpleot/v0_4_2";
  inputs."simpleot-v0_4_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."simpleot-v0_4_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."simpleot-v0_5_0".type = "github";
  inputs."simpleot-v0_5_0".owner = "riinr";
  inputs."simpleot-v0_5_0".repo = "flake-nimble";
  inputs."simpleot-v0_5_0".ref = "flake-pinning";
  inputs."simpleot-v0_5_0".dir = "nimpkgs/s/simpleot/v0_5_0";
  inputs."simpleot-v0_5_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."simpleot-v0_5_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."simpleot-v0_5_1".type = "github";
  inputs."simpleot-v0_5_1".owner = "riinr";
  inputs."simpleot-v0_5_1".repo = "flake-nimble";
  inputs."simpleot-v0_5_1".ref = "flake-pinning";
  inputs."simpleot-v0_5_1".dir = "nimpkgs/s/simpleot/v0_5_1";
  inputs."simpleot-v0_5_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."simpleot-v0_5_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}