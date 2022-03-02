{
  description = ''Last.FM API bindings'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."lastfm-master".type = "github";
  inputs."lastfm-master".owner = "riinr";
  inputs."lastfm-master".repo = "flake-nimble";
  inputs."lastfm-master".ref = "flake-pinning";
  inputs."lastfm-master".dir = "nimpkgs/l/lastfm/master";
  inputs."lastfm-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."lastfm-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."lastfm-0_6_0".type = "github";
  inputs."lastfm-0_6_0".owner = "riinr";
  inputs."lastfm-0_6_0".repo = "flake-nimble";
  inputs."lastfm-0_6_0".ref = "flake-pinning";
  inputs."lastfm-0_6_0".dir = "nimpkgs/l/lastfm/0_6_0";
  inputs."lastfm-0_6_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."lastfm-0_6_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."lastfm-0_7_0".type = "github";
  inputs."lastfm-0_7_0".owner = "riinr";
  inputs."lastfm-0_7_0".repo = "flake-nimble";
  inputs."lastfm-0_7_0".ref = "flake-pinning";
  inputs."lastfm-0_7_0".dir = "nimpkgs/l/lastfm/0_7_0";
  inputs."lastfm-0_7_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."lastfm-0_7_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."lastfm-0_8_0".type = "github";
  inputs."lastfm-0_8_0".owner = "riinr";
  inputs."lastfm-0_8_0".repo = "flake-nimble";
  inputs."lastfm-0_8_0".ref = "flake-pinning";
  inputs."lastfm-0_8_0".dir = "nimpkgs/l/lastfm/0_8_0";
  inputs."lastfm-0_8_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."lastfm-0_8_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."lastfm-0_8_1".type = "github";
  inputs."lastfm-0_8_1".owner = "riinr";
  inputs."lastfm-0_8_1".repo = "flake-nimble";
  inputs."lastfm-0_8_1".ref = "flake-pinning";
  inputs."lastfm-0_8_1".dir = "nimpkgs/l/lastfm/0_8_1";
  inputs."lastfm-0_8_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."lastfm-0_8_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."lastfm-0_8_2".type = "github";
  inputs."lastfm-0_8_2".owner = "riinr";
  inputs."lastfm-0_8_2".repo = "flake-nimble";
  inputs."lastfm-0_8_2".ref = "flake-pinning";
  inputs."lastfm-0_8_2".dir = "nimpkgs/l/lastfm/0_8_2";
  inputs."lastfm-0_8_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."lastfm-0_8_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}