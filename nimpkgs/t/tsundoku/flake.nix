{
  description = ''Simple and lightweight OPDS ebook server'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."tsundoku-master".type = "github";
  inputs."tsundoku-master".owner = "riinr";
  inputs."tsundoku-master".repo = "flake-nimble";
  inputs."tsundoku-master".ref = "flake-pinning";
  inputs."tsundoku-master".dir = "nimpkgs/t/tsundoku/master";
  inputs."tsundoku-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."tsundoku-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."tsundoku-v0_1_0".type = "github";
  inputs."tsundoku-v0_1_0".owner = "riinr";
  inputs."tsundoku-v0_1_0".repo = "flake-nimble";
  inputs."tsundoku-v0_1_0".ref = "flake-pinning";
  inputs."tsundoku-v0_1_0".dir = "nimpkgs/t/tsundoku/v0_1_0";
  inputs."tsundoku-v0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."tsundoku-v0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}