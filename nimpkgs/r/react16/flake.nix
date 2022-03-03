{
  description = ''React.js 16.x bindings for Nim'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."react16-master".type = "github";
  inputs."react16-master".owner = "riinr";
  inputs."react16-master".repo = "flake-nimble";
  inputs."react16-master".ref = "flake-pinning";
  inputs."react16-master".dir = "nimpkgs/r/react16/master";
  inputs."react16-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."react16-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."react16-0_3_1".type = "github";
  inputs."react16-0_3_1".owner = "riinr";
  inputs."react16-0_3_1".repo = "flake-nimble";
  inputs."react16-0_3_1".ref = "flake-pinning";
  inputs."react16-0_3_1".dir = "nimpkgs/r/react16/0_3_1";
  inputs."react16-0_3_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."react16-0_3_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."react16-0_3_2".type = "github";
  inputs."react16-0_3_2".owner = "riinr";
  inputs."react16-0_3_2".repo = "flake-nimble";
  inputs."react16-0_3_2".ref = "flake-pinning";
  inputs."react16-0_3_2".dir = "nimpkgs/r/react16/0_3_2";
  inputs."react16-0_3_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."react16-0_3_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."react16-0_3_3".type = "github";
  inputs."react16-0_3_3".owner = "riinr";
  inputs."react16-0_3_3".repo = "flake-nimble";
  inputs."react16-0_3_3".ref = "flake-pinning";
  inputs."react16-0_3_3".dir = "nimpkgs/r/react16/0_3_3";
  inputs."react16-0_3_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."react16-0_3_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."react16-0_3_4".type = "github";
  inputs."react16-0_3_4".owner = "riinr";
  inputs."react16-0_3_4".repo = "flake-nimble";
  inputs."react16-0_3_4".ref = "flake-pinning";
  inputs."react16-0_3_4".dir = "nimpkgs/r/react16/0_3_4";
  inputs."react16-0_3_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."react16-0_3_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."react16-0_3_5".type = "github";
  inputs."react16-0_3_5".owner = "riinr";
  inputs."react16-0_3_5".repo = "flake-nimble";
  inputs."react16-0_3_5".ref = "flake-pinning";
  inputs."react16-0_3_5".dir = "nimpkgs/r/react16/0_3_5";
  inputs."react16-0_3_5".inputs.nixpkgs.follows = "nixpkgs";
  inputs."react16-0_3_5".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."react16-0_3_6".type = "github";
  inputs."react16-0_3_6".owner = "riinr";
  inputs."react16-0_3_6".repo = "flake-nimble";
  inputs."react16-0_3_6".ref = "flake-pinning";
  inputs."react16-0_3_6".dir = "nimpkgs/r/react16/0_3_6";
  inputs."react16-0_3_6".inputs.nixpkgs.follows = "nixpkgs";
  inputs."react16-0_3_6".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."react16-v0_3_7".type = "github";
  inputs."react16-v0_3_7".owner = "riinr";
  inputs."react16-v0_3_7".repo = "flake-nimble";
  inputs."react16-v0_3_7".ref = "flake-pinning";
  inputs."react16-v0_3_7".dir = "nimpkgs/r/react16/v0_3_7";
  inputs."react16-v0_3_7".inputs.nixpkgs.follows = "nixpkgs";
  inputs."react16-v0_3_7".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}