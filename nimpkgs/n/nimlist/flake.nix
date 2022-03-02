{
  description = ''View nim packages in your browser.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."nimlist-master".type = "github";
  inputs."nimlist-master".owner = "riinr";
  inputs."nimlist-master".repo = "flake-nimble";
  inputs."nimlist-master".ref = "flake-pinning";
  inputs."nimlist-master".dir = "nimpkgs/n/nimlist/master";
  inputs."nimlist-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimlist-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."nimlist-v0_1_1".type = "github";
  inputs."nimlist-v0_1_1".owner = "riinr";
  inputs."nimlist-v0_1_1".repo = "flake-nimble";
  inputs."nimlist-v0_1_1".ref = "flake-pinning";
  inputs."nimlist-v0_1_1".dir = "nimpkgs/n/nimlist/v0_1_1";
  inputs."nimlist-v0_1_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimlist-v0_1_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."nimlist-v0_1_2".type = "github";
  inputs."nimlist-v0_1_2".owner = "riinr";
  inputs."nimlist-v0_1_2".repo = "flake-nimble";
  inputs."nimlist-v0_1_2".ref = "flake-pinning";
  inputs."nimlist-v0_1_2".dir = "nimpkgs/n/nimlist/v0_1_2";
  inputs."nimlist-v0_1_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimlist-v0_1_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."nimlist-v0_1_3".type = "github";
  inputs."nimlist-v0_1_3".owner = "riinr";
  inputs."nimlist-v0_1_3".repo = "flake-nimble";
  inputs."nimlist-v0_1_3".ref = "flake-pinning";
  inputs."nimlist-v0_1_3".dir = "nimpkgs/n/nimlist/v0_1_3";
  inputs."nimlist-v0_1_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimlist-v0_1_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."nimlist-v0_1_4".type = "github";
  inputs."nimlist-v0_1_4".owner = "riinr";
  inputs."nimlist-v0_1_4".repo = "flake-nimble";
  inputs."nimlist-v0_1_4".ref = "flake-pinning";
  inputs."nimlist-v0_1_4".dir = "nimpkgs/n/nimlist/v0_1_4";
  inputs."nimlist-v0_1_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimlist-v0_1_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."nimlist-v0_1_5".type = "github";
  inputs."nimlist-v0_1_5".owner = "riinr";
  inputs."nimlist-v0_1_5".repo = "flake-nimble";
  inputs."nimlist-v0_1_5".ref = "flake-pinning";
  inputs."nimlist-v0_1_5".dir = "nimpkgs/n/nimlist/v0_1_5";
  inputs."nimlist-v0_1_5".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimlist-v0_1_5".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}