{
  description = ''Fast and simple calculation of polygenic scores'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."nimpress-develop".type = "github";
  inputs."nimpress-develop".owner = "riinr";
  inputs."nimpress-develop".repo = "flake-nimble";
  inputs."nimpress-develop".ref = "flake-pinning";
  inputs."nimpress-develop".dir = "nimpkgs/n/nimpress/develop";
  inputs."nimpress-develop".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimpress-develop".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."nimpress-master".type = "github";
  inputs."nimpress-master".owner = "riinr";
  inputs."nimpress-master".repo = "flake-nimble";
  inputs."nimpress-master".ref = "flake-pinning";
  inputs."nimpress-master".dir = "nimpkgs/n/nimpress/master";
  inputs."nimpress-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimpress-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."nimpress-v1_0_0".type = "github";
  inputs."nimpress-v1_0_0".owner = "riinr";
  inputs."nimpress-v1_0_0".repo = "flake-nimble";
  inputs."nimpress-v1_0_0".ref = "flake-pinning";
  inputs."nimpress-v1_0_0".dir = "nimpkgs/n/nimpress/v1_0_0";
  inputs."nimpress-v1_0_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimpress-v1_0_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}