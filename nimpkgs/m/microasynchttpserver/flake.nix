{
  description = ''A thin asynchronous HTTP server library, API compatible with Nim's built-in asynchttpserver.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."microasynchttpserver-master".type = "github";
  inputs."microasynchttpserver-master".owner = "riinr";
  inputs."microasynchttpserver-master".repo = "flake-nimble";
  inputs."microasynchttpserver-master".ref = "flake-pinning";
  inputs."microasynchttpserver-master".dir = "nimpkgs/m/microasynchttpserver/master";
  inputs."microasynchttpserver-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."microasynchttpserver-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."microasynchttpserver-0_10_0".type = "github";
  inputs."microasynchttpserver-0_10_0".owner = "riinr";
  inputs."microasynchttpserver-0_10_0".repo = "flake-nimble";
  inputs."microasynchttpserver-0_10_0".ref = "flake-pinning";
  inputs."microasynchttpserver-0_10_0".dir = "nimpkgs/m/microasynchttpserver/0_10_0";
  inputs."microasynchttpserver-0_10_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."microasynchttpserver-0_10_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."microasynchttpserver-0_10_1".type = "github";
  inputs."microasynchttpserver-0_10_1".owner = "riinr";
  inputs."microasynchttpserver-0_10_1".repo = "flake-nimble";
  inputs."microasynchttpserver-0_10_1".ref = "flake-pinning";
  inputs."microasynchttpserver-0_10_1".dir = "nimpkgs/m/microasynchttpserver/0_10_1";
  inputs."microasynchttpserver-0_10_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."microasynchttpserver-0_10_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."microasynchttpserver-0_10_2".type = "github";
  inputs."microasynchttpserver-0_10_2".owner = "riinr";
  inputs."microasynchttpserver-0_10_2".repo = "flake-nimble";
  inputs."microasynchttpserver-0_10_2".ref = "flake-pinning";
  inputs."microasynchttpserver-0_10_2".dir = "nimpkgs/m/microasynchttpserver/0_10_2";
  inputs."microasynchttpserver-0_10_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."microasynchttpserver-0_10_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."microasynchttpserver-0_9_0".type = "github";
  inputs."microasynchttpserver-0_9_0".owner = "riinr";
  inputs."microasynchttpserver-0_9_0".repo = "flake-nimble";
  inputs."microasynchttpserver-0_9_0".ref = "flake-pinning";
  inputs."microasynchttpserver-0_9_0".dir = "nimpkgs/m/microasynchttpserver/0_9_0";
  inputs."microasynchttpserver-0_9_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."microasynchttpserver-0_9_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."microasynchttpserver-0_9_5".type = "github";
  inputs."microasynchttpserver-0_9_5".owner = "riinr";
  inputs."microasynchttpserver-0_9_5".repo = "flake-nimble";
  inputs."microasynchttpserver-0_9_5".ref = "flake-pinning";
  inputs."microasynchttpserver-0_9_5".dir = "nimpkgs/m/microasynchttpserver/0_9_5";
  inputs."microasynchttpserver-0_9_5".inputs.nixpkgs.follows = "nixpkgs";
  inputs."microasynchttpserver-0_9_5".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}