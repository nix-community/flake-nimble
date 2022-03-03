{
  description = ''Erlang/Elixir NIFs for nim'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."nimler-develop".type = "github";
  inputs."nimler-develop".owner = "riinr";
  inputs."nimler-develop".repo = "flake-nimble";
  inputs."nimler-develop".ref = "flake-pinning";
  inputs."nimler-develop".dir = "nimpkgs/n/nimler/develop";
  inputs."nimler-develop".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimler-develop".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."nimler-master".type = "github";
  inputs."nimler-master".owner = "riinr";
  inputs."nimler-master".repo = "flake-nimble";
  inputs."nimler-master".ref = "flake-pinning";
  inputs."nimler-master".dir = "nimpkgs/n/nimler/master";
  inputs."nimler-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimler-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."nimler-v2_0".type = "github";
  inputs."nimler-v2_0".owner = "riinr";
  inputs."nimler-v2_0".repo = "flake-nimble";
  inputs."nimler-v2_0".ref = "flake-pinning";
  inputs."nimler-v2_0".dir = "nimpkgs/n/nimler/v2_0";
  inputs."nimler-v2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimler-v2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."nimler-v3_0".type = "github";
  inputs."nimler-v3_0".owner = "riinr";
  inputs."nimler-v3_0".repo = "flake-nimble";
  inputs."nimler-v3_0".ref = "flake-pinning";
  inputs."nimler-v3_0".dir = "nimpkgs/n/nimler/v3_0";
  inputs."nimler-v3_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimler-v3_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."nimler-v3_1".type = "github";
  inputs."nimler-v3_1".owner = "riinr";
  inputs."nimler-v3_1".repo = "flake-nimble";
  inputs."nimler-v3_1".ref = "flake-pinning";
  inputs."nimler-v3_1".dir = "nimpkgs/n/nimler/v3_1";
  inputs."nimler-v3_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimler-v3_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."nimler-v4_0".type = "github";
  inputs."nimler-v4_0".owner = "riinr";
  inputs."nimler-v4_0".repo = "flake-nimble";
  inputs."nimler-v4_0".ref = "flake-pinning";
  inputs."nimler-v4_0".dir = "nimpkgs/n/nimler/v4_0";
  inputs."nimler-v4_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimler-v4_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."nimler-v4_1".type = "github";
  inputs."nimler-v4_1".owner = "riinr";
  inputs."nimler-v4_1".repo = "flake-nimble";
  inputs."nimler-v4_1".ref = "flake-pinning";
  inputs."nimler-v4_1".dir = "nimpkgs/n/nimler/v4_1";
  inputs."nimler-v4_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimler-v4_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."nimler-v4_2".type = "github";
  inputs."nimler-v4_2".owner = "riinr";
  inputs."nimler-v4_2".repo = "flake-nimble";
  inputs."nimler-v4_2".ref = "flake-pinning";
  inputs."nimler-v4_2".dir = "nimpkgs/n/nimler/v4_2";
  inputs."nimler-v4_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimler-v4_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."nimler-v4_3".type = "github";
  inputs."nimler-v4_3".owner = "riinr";
  inputs."nimler-v4_3".repo = "flake-nimble";
  inputs."nimler-v4_3".ref = "flake-pinning";
  inputs."nimler-v4_3".dir = "nimpkgs/n/nimler/v4_3";
  inputs."nimler-v4_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimler-v4_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."nimler-v4_4".type = "github";
  inputs."nimler-v4_4".owner = "riinr";
  inputs."nimler-v4_4".repo = "flake-nimble";
  inputs."nimler-v4_4".ref = "flake-pinning";
  inputs."nimler-v4_4".dir = "nimpkgs/n/nimler/v4_4";
  inputs."nimler-v4_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimler-v4_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."nimler-v4_5".type = "github";
  inputs."nimler-v4_5".owner = "riinr";
  inputs."nimler-v4_5".repo = "flake-nimble";
  inputs."nimler-v4_5".ref = "flake-pinning";
  inputs."nimler-v4_5".dir = "nimpkgs/n/nimler/v4_5";
  inputs."nimler-v4_5".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimler-v4_5".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."nimler-v4_6".type = "github";
  inputs."nimler-v4_6".owner = "riinr";
  inputs."nimler-v4_6".repo = "flake-nimble";
  inputs."nimler-v4_6".ref = "flake-pinning";
  inputs."nimler-v4_6".dir = "nimpkgs/n/nimler/v4_6";
  inputs."nimler-v4_6".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimler-v4_6".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}