{
  description = ''A simple PubSub framework using STOMP.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."cittadino-master".type = "github";
  inputs."cittadino-master".owner = "riinr";
  inputs."cittadino-master".repo = "flake-nimble";
  inputs."cittadino-master".ref = "flake-pinning";
  inputs."cittadino-master".dir = "nimpkgs/c/cittadino/master";
  inputs."cittadino-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."cittadino-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."cittadino-0_1_0".type = "github";
  inputs."cittadino-0_1_0".owner = "riinr";
  inputs."cittadino-0_1_0".repo = "flake-nimble";
  inputs."cittadino-0_1_0".ref = "flake-pinning";
  inputs."cittadino-0_1_0".dir = "nimpkgs/c/cittadino/0_1_0";
  inputs."cittadino-0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."cittadino-0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."cittadino-0_1_1".type = "github";
  inputs."cittadino-0_1_1".owner = "riinr";
  inputs."cittadino-0_1_1".repo = "flake-nimble";
  inputs."cittadino-0_1_1".ref = "flake-pinning";
  inputs."cittadino-0_1_1".dir = "nimpkgs/c/cittadino/0_1_1";
  inputs."cittadino-0_1_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."cittadino-0_1_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."cittadino-0_1_2".type = "github";
  inputs."cittadino-0_1_2".owner = "riinr";
  inputs."cittadino-0_1_2".repo = "flake-nimble";
  inputs."cittadino-0_1_2".ref = "flake-pinning";
  inputs."cittadino-0_1_2".dir = "nimpkgs/c/cittadino/0_1_2";
  inputs."cittadino-0_1_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."cittadino-0_1_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."cittadino-0_1_4".type = "github";
  inputs."cittadino-0_1_4".owner = "riinr";
  inputs."cittadino-0_1_4".repo = "flake-nimble";
  inputs."cittadino-0_1_4".ref = "flake-pinning";
  inputs."cittadino-0_1_4".dir = "nimpkgs/c/cittadino/0_1_4";
  inputs."cittadino-0_1_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."cittadino-0_1_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}