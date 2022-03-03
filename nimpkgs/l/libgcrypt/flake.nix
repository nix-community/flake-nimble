{
  description = ''libgcrypt wrapper'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."libgcrypt-master".type = "github";
  inputs."libgcrypt-master".owner = "riinr";
  inputs."libgcrypt-master".repo = "flake-nimble";
  inputs."libgcrypt-master".ref = "flake-pinning";
  inputs."libgcrypt-master".dir = "nimpkgs/l/libgcrypt/master";
  inputs."libgcrypt-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."libgcrypt-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."libgcrypt-0_0_1".type = "github";
  inputs."libgcrypt-0_0_1".owner = "riinr";
  inputs."libgcrypt-0_0_1".repo = "flake-nimble";
  inputs."libgcrypt-0_0_1".ref = "flake-pinning";
  inputs."libgcrypt-0_0_1".dir = "nimpkgs/l/libgcrypt/0_0_1";
  inputs."libgcrypt-0_0_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."libgcrypt-0_0_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."libgcrypt-0_1_1".type = "github";
  inputs."libgcrypt-0_1_1".owner = "riinr";
  inputs."libgcrypt-0_1_1".repo = "flake-nimble";
  inputs."libgcrypt-0_1_1".ref = "flake-pinning";
  inputs."libgcrypt-0_1_1".dir = "nimpkgs/l/libgcrypt/0_1_1";
  inputs."libgcrypt-0_1_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."libgcrypt-0_1_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}