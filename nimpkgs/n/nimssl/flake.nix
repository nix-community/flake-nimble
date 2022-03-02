{
  description = ''OpenSSL wrapper for Nim'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."nimssl-master".type = "github";
  inputs."nimssl-master".owner = "riinr";
  inputs."nimssl-master".repo = "flake-nimble";
  inputs."nimssl-master".ref = "flake-pinning";
  inputs."nimssl-master".dir = "nimpkgs/n/nimssl/master";
  inputs."nimssl-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimssl-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."nimssl-v0_1_0".type = "github";
  inputs."nimssl-v0_1_0".owner = "riinr";
  inputs."nimssl-v0_1_0".repo = "flake-nimble";
  inputs."nimssl-v0_1_0".ref = "flake-pinning";
  inputs."nimssl-v0_1_0".dir = "nimpkgs/n/nimssl/v0_1_0";
  inputs."nimssl-v0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimssl-v0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."nimssl-v0_1_2".type = "github";
  inputs."nimssl-v0_1_2".owner = "riinr";
  inputs."nimssl-v0_1_2".repo = "flake-nimble";
  inputs."nimssl-v0_1_2".ref = "flake-pinning";
  inputs."nimssl-v0_1_2".dir = "nimpkgs/n/nimssl/v0_1_2";
  inputs."nimssl-v0_1_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimssl-v0_1_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."nimssl-v0_1_3".type = "github";
  inputs."nimssl-v0_1_3".owner = "riinr";
  inputs."nimssl-v0_1_3".repo = "flake-nimble";
  inputs."nimssl-v0_1_3".ref = "flake-pinning";
  inputs."nimssl-v0_1_3".dir = "nimpkgs/n/nimssl/v0_1_3";
  inputs."nimssl-v0_1_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimssl-v0_1_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."nimssl-v0_1_4".type = "github";
  inputs."nimssl-v0_1_4".owner = "riinr";
  inputs."nimssl-v0_1_4".repo = "flake-nimble";
  inputs."nimssl-v0_1_4".ref = "flake-pinning";
  inputs."nimssl-v0_1_4".dir = "nimpkgs/n/nimssl/v0_1_4";
  inputs."nimssl-v0_1_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimssl-v0_1_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."nimssl-v0_1_5".type = "github";
  inputs."nimssl-v0_1_5".owner = "riinr";
  inputs."nimssl-v0_1_5".repo = "flake-nimble";
  inputs."nimssl-v0_1_5".ref = "flake-pinning";
  inputs."nimssl-v0_1_5".dir = "nimpkgs/n/nimssl/v0_1_5";
  inputs."nimssl-v0_1_5".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimssl-v0_1_5".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}