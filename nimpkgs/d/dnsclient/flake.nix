{
  description = ''Simple DNS Client & Library'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."dnsclient-master".type = "github";
  inputs."dnsclient-master".owner = "riinr";
  inputs."dnsclient-master".repo = "flake-nimble";
  inputs."dnsclient-master".ref = "flake-pinning";
  inputs."dnsclient-master".dir = "nimpkgs/d/dnsclient/master";
  inputs."dnsclient-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."dnsclient-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."dnsclient-0_0_1".type = "github";
  inputs."dnsclient-0_0_1".owner = "riinr";
  inputs."dnsclient-0_0_1".repo = "flake-nimble";
  inputs."dnsclient-0_0_1".ref = "flake-pinning";
  inputs."dnsclient-0_0_1".dir = "nimpkgs/d/dnsclient/0_0_1";
  inputs."dnsclient-0_0_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."dnsclient-0_0_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."dnsclient-0_0_2".type = "github";
  inputs."dnsclient-0_0_2".owner = "riinr";
  inputs."dnsclient-0_0_2".repo = "flake-nimble";
  inputs."dnsclient-0_0_2".ref = "flake-pinning";
  inputs."dnsclient-0_0_2".dir = "nimpkgs/d/dnsclient/0_0_2";
  inputs."dnsclient-0_0_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."dnsclient-0_0_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."dnsclient-0_0_3".type = "github";
  inputs."dnsclient-0_0_3".owner = "riinr";
  inputs."dnsclient-0_0_3".repo = "flake-nimble";
  inputs."dnsclient-0_0_3".ref = "flake-pinning";
  inputs."dnsclient-0_0_3".dir = "nimpkgs/d/dnsclient/0_0_3";
  inputs."dnsclient-0_0_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."dnsclient-0_0_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."dnsclient-0_1_0".type = "github";
  inputs."dnsclient-0_1_0".owner = "riinr";
  inputs."dnsclient-0_1_0".repo = "flake-nimble";
  inputs."dnsclient-0_1_0".ref = "flake-pinning";
  inputs."dnsclient-0_1_0".dir = "nimpkgs/d/dnsclient/0_1_0";
  inputs."dnsclient-0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."dnsclient-0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."dnsclient-0_1_1".type = "github";
  inputs."dnsclient-0_1_1".owner = "riinr";
  inputs."dnsclient-0_1_1".repo = "flake-nimble";
  inputs."dnsclient-0_1_1".ref = "flake-pinning";
  inputs."dnsclient-0_1_1".dir = "nimpkgs/d/dnsclient/0_1_1";
  inputs."dnsclient-0_1_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."dnsclient-0_1_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."dnsclient-0_1_2".type = "github";
  inputs."dnsclient-0_1_2".owner = "riinr";
  inputs."dnsclient-0_1_2".repo = "flake-nimble";
  inputs."dnsclient-0_1_2".ref = "flake-pinning";
  inputs."dnsclient-0_1_2".dir = "nimpkgs/d/dnsclient/0_1_2";
  inputs."dnsclient-0_1_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."dnsclient-0_1_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}