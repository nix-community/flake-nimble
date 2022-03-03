{
  description = ''Bindings to the high-level Argon2 C API'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."argon2_bind-develop".type = "github";
  inputs."argon2_bind-develop".owner = "riinr";
  inputs."argon2_bind-develop".repo = "flake-nimble";
  inputs."argon2_bind-develop".ref = "flake-pinning";
  inputs."argon2_bind-develop".dir = "nimpkgs/a/argon2_bind/develop";
  inputs."argon2_bind-develop".inputs.nixpkgs.follows = "nixpkgs";
  inputs."argon2_bind-develop".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."argon2_bind-master".type = "github";
  inputs."argon2_bind-master".owner = "riinr";
  inputs."argon2_bind-master".repo = "flake-nimble";
  inputs."argon2_bind-master".ref = "flake-pinning";
  inputs."argon2_bind-master".dir = "nimpkgs/a/argon2_bind/master";
  inputs."argon2_bind-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."argon2_bind-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."argon2_bind-v0_1_0".type = "github";
  inputs."argon2_bind-v0_1_0".owner = "riinr";
  inputs."argon2_bind-v0_1_0".repo = "flake-nimble";
  inputs."argon2_bind-v0_1_0".ref = "flake-pinning";
  inputs."argon2_bind-v0_1_0".dir = "nimpkgs/a/argon2_bind/v0_1_0";
  inputs."argon2_bind-v0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."argon2_bind-v0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."argon2_bind-v0_1_1".type = "github";
  inputs."argon2_bind-v0_1_1".owner = "riinr";
  inputs."argon2_bind-v0_1_1".repo = "flake-nimble";
  inputs."argon2_bind-v0_1_1".ref = "flake-pinning";
  inputs."argon2_bind-v0_1_1".dir = "nimpkgs/a/argon2_bind/v0_1_1";
  inputs."argon2_bind-v0_1_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."argon2_bind-v0_1_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}