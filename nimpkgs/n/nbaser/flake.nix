{
  description = ''Encode/decode arbitrary unicode bases from size 2 to 256'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."nbaser-archive/develop".type = "github";
  inputs."nbaser-archive/develop".owner = "riinr";
  inputs."nbaser-archive/develop".repo = "flake-nimble";
  inputs."nbaser-archive/develop".ref = "flake-pinning";
  inputs."nbaser-archive/develop".dir = "nimpkgs/n/nbaser/archive/develop";
  inputs."nbaser-archive/develop".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nbaser-archive/develop".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."nbaser-develop".type = "github";
  inputs."nbaser-develop".owner = "riinr";
  inputs."nbaser-develop".repo = "flake-nimble";
  inputs."nbaser-develop".ref = "flake-pinning";
  inputs."nbaser-develop".dir = "nimpkgs/n/nbaser/develop";
  inputs."nbaser-develop".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nbaser-develop".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."nbaser-master".type = "github";
  inputs."nbaser-master".owner = "riinr";
  inputs."nbaser-master".repo = "flake-nimble";
  inputs."nbaser-master".ref = "flake-pinning";
  inputs."nbaser-master".dir = "nimpkgs/n/nbaser/master";
  inputs."nbaser-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nbaser-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."nbaser-v1_0_0".type = "github";
  inputs."nbaser-v1_0_0".owner = "riinr";
  inputs."nbaser-v1_0_0".repo = "flake-nimble";
  inputs."nbaser-v1_0_0".ref = "flake-pinning";
  inputs."nbaser-v1_0_0".dir = "nimpkgs/n/nbaser/v1_0_0";
  inputs."nbaser-v1_0_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nbaser-v1_0_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."nbaser-v1_0_1".type = "github";
  inputs."nbaser-v1_0_1".owner = "riinr";
  inputs."nbaser-v1_0_1".repo = "flake-nimble";
  inputs."nbaser-v1_0_1".ref = "flake-pinning";
  inputs."nbaser-v1_0_1".dir = "nimpkgs/n/nbaser/v1_0_1";
  inputs."nbaser-v1_0_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nbaser-v1_0_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}