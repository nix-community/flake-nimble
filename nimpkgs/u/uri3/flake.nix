{
  description = ''nim.uri3 is a Nim module that provides improved way for working with URIs. It is based on the uri module in the Nim standard library and fork from nim-uri2'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."uri3-master".type = "github";
  inputs."uri3-master".owner = "riinr";
  inputs."uri3-master".repo = "flake-nimble";
  inputs."uri3-master".ref = "flake-pinning";
  inputs."uri3-master".dir = "nimpkgs/u/uri3/master";
  inputs."uri3-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."uri3-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."uri3-0_1_4".type = "github";
  inputs."uri3-0_1_4".owner = "riinr";
  inputs."uri3-0_1_4".repo = "flake-nimble";
  inputs."uri3-0_1_4".ref = "flake-pinning";
  inputs."uri3-0_1_4".dir = "nimpkgs/u/uri3/0_1_4";
  inputs."uri3-0_1_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."uri3-0_1_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."uri3-v0_1_1".type = "github";
  inputs."uri3-v0_1_1".owner = "riinr";
  inputs."uri3-v0_1_1".repo = "flake-nimble";
  inputs."uri3-v0_1_1".ref = "flake-pinning";
  inputs."uri3-v0_1_1".dir = "nimpkgs/u/uri3/v0_1_1";
  inputs."uri3-v0_1_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."uri3-v0_1_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."uri3-v0_1_3".type = "github";
  inputs."uri3-v0_1_3".owner = "riinr";
  inputs."uri3-v0_1_3".repo = "flake-nimble";
  inputs."uri3-v0_1_3".ref = "flake-pinning";
  inputs."uri3-v0_1_3".dir = "nimpkgs/u/uri3/v0_1_3";
  inputs."uri3-v0_1_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."uri3-v0_1_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."uri3-v0_1_4".type = "github";
  inputs."uri3-v0_1_4".owner = "riinr";
  inputs."uri3-v0_1_4".repo = "flake-nimble";
  inputs."uri3-v0_1_4".ref = "flake-pinning";
  inputs."uri3-v0_1_4".dir = "nimpkgs/u/uri3/v0_1_4";
  inputs."uri3-v0_1_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."uri3-v0_1_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}