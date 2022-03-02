{
  description = ''Base32 library for Nim'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."base32-master".type = "github";
  inputs."base32-master".owner = "riinr";
  inputs."base32-master".repo = "flake-nimble";
  inputs."base32-master".ref = "flake-pinning";
  inputs."base32-master".dir = "nimpkgs/b/base32/master";
  inputs."base32-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."base32-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."base32-0_1_2".type = "github";
  inputs."base32-0_1_2".owner = "riinr";
  inputs."base32-0_1_2".repo = "flake-nimble";
  inputs."base32-0_1_2".ref = "flake-pinning";
  inputs."base32-0_1_2".dir = "nimpkgs/b/base32/0_1_2";
  inputs."base32-0_1_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."base32-0_1_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."base32-0_1_3".type = "github";
  inputs."base32-0_1_3".owner = "riinr";
  inputs."base32-0_1_3".repo = "flake-nimble";
  inputs."base32-0_1_3".ref = "flake-pinning";
  inputs."base32-0_1_3".dir = "nimpkgs/b/base32/0_1_3";
  inputs."base32-0_1_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."base32-0_1_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}