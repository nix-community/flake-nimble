{
  description = ''a couchDB client written in Nim'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."mycouch-main".type = "github";
  inputs."mycouch-main".owner = "riinr";
  inputs."mycouch-main".repo = "flake-nimble";
  inputs."mycouch-main".ref = "flake-pinning";
  inputs."mycouch-main".dir = "nimpkgs/m/mycouch/main";
  inputs."mycouch-main".inputs.nixpkgs.follows = "nixpkgs";
  inputs."mycouch-main".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."mycouch-0_2".type = "github";
  inputs."mycouch-0_2".owner = "riinr";
  inputs."mycouch-0_2".repo = "flake-nimble";
  inputs."mycouch-0_2".ref = "flake-pinning";
  inputs."mycouch-0_2".dir = "nimpkgs/m/mycouch/0_2";
  inputs."mycouch-0_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."mycouch-0_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."mycouch-0_4_0".type = "github";
  inputs."mycouch-0_4_0".owner = "riinr";
  inputs."mycouch-0_4_0".repo = "flake-nimble";
  inputs."mycouch-0_4_0".ref = "flake-pinning";
  inputs."mycouch-0_4_0".dir = "nimpkgs/m/mycouch/0_4_0";
  inputs."mycouch-0_4_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."mycouch-0_4_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}