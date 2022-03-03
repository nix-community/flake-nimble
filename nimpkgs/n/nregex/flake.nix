{
  description = ''A DFA based regex engine'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."nregex-master".type = "github";
  inputs."nregex-master".owner = "riinr";
  inputs."nregex-master".repo = "flake-nimble";
  inputs."nregex-master".ref = "flake-pinning";
  inputs."nregex-master".dir = "nimpkgs/n/nregex/master";
  inputs."nregex-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nregex-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."nregex-v0_0_1".type = "github";
  inputs."nregex-v0_0_1".owner = "riinr";
  inputs."nregex-v0_0_1".repo = "flake-nimble";
  inputs."nregex-v0_0_1".ref = "flake-pinning";
  inputs."nregex-v0_0_1".dir = "nimpkgs/n/nregex/v0_0_1";
  inputs."nregex-v0_0_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nregex-v0_0_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."nregex-v0_0_2".type = "github";
  inputs."nregex-v0_0_2".owner = "riinr";
  inputs."nregex-v0_0_2".repo = "flake-nimble";
  inputs."nregex-v0_0_2".ref = "flake-pinning";
  inputs."nregex-v0_0_2".dir = "nimpkgs/n/nregex/v0_0_2";
  inputs."nregex-v0_0_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nregex-v0_0_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."nregex-v0_0_3".type = "github";
  inputs."nregex-v0_0_3".owner = "riinr";
  inputs."nregex-v0_0_3".repo = "flake-nimble";
  inputs."nregex-v0_0_3".ref = "flake-pinning";
  inputs."nregex-v0_0_3".dir = "nimpkgs/n/nregex/v0_0_3";
  inputs."nregex-v0_0_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nregex-v0_0_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."nregex-v0_0_4".type = "github";
  inputs."nregex-v0_0_4".owner = "riinr";
  inputs."nregex-v0_0_4".repo = "flake-nimble";
  inputs."nregex-v0_0_4".ref = "flake-pinning";
  inputs."nregex-v0_0_4".dir = "nimpkgs/n/nregex/v0_0_4";
  inputs."nregex-v0_0_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nregex-v0_0_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}