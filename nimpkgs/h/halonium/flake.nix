{
  description = ''A browser automation library written in Nim'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."halonium-master".type = "github";
  inputs."halonium-master".owner = "riinr";
  inputs."halonium-master".repo = "flake-nimble";
  inputs."halonium-master".ref = "flake-pinning";
  inputs."halonium-master".dir = "nimpkgs/h/halonium/master";
  inputs."halonium-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."halonium-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."halonium-0_2_3".type = "github";
  inputs."halonium-0_2_3".owner = "riinr";
  inputs."halonium-0_2_3".repo = "flake-nimble";
  inputs."halonium-0_2_3".ref = "flake-pinning";
  inputs."halonium-0_2_3".dir = "nimpkgs/h/halonium/0_2_3";
  inputs."halonium-0_2_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."halonium-0_2_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."halonium-0_2_4".type = "github";
  inputs."halonium-0_2_4".owner = "riinr";
  inputs."halonium-0_2_4".repo = "flake-nimble";
  inputs."halonium-0_2_4".ref = "flake-pinning";
  inputs."halonium-0_2_4".dir = "nimpkgs/h/halonium/0_2_4";
  inputs."halonium-0_2_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."halonium-0_2_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."halonium-0_2_5".type = "github";
  inputs."halonium-0_2_5".owner = "riinr";
  inputs."halonium-0_2_5".repo = "flake-nimble";
  inputs."halonium-0_2_5".ref = "flake-pinning";
  inputs."halonium-0_2_5".dir = "nimpkgs/h/halonium/0_2_5";
  inputs."halonium-0_2_5".inputs.nixpkgs.follows = "nixpkgs";
  inputs."halonium-0_2_5".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."halonium-0_2_6".type = "github";
  inputs."halonium-0_2_6".owner = "riinr";
  inputs."halonium-0_2_6".repo = "flake-nimble";
  inputs."halonium-0_2_6".ref = "flake-pinning";
  inputs."halonium-0_2_6".dir = "nimpkgs/h/halonium/0_2_6";
  inputs."halonium-0_2_6".inputs.nixpkgs.follows = "nixpkgs";
  inputs."halonium-0_2_6".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}