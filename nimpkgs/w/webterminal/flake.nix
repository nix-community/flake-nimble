{
  description = ''Very simple browser Javascript TTY web terminal'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."webterminal-master".type = "github";
  inputs."webterminal-master".owner = "riinr";
  inputs."webterminal-master".repo = "flake-nimble";
  inputs."webterminal-master".ref = "flake-pinning";
  inputs."webterminal-master".dir = "nimpkgs/w/webterminal/master";
  inputs."webterminal-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."webterminal-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."webterminal-v0_0_1".type = "github";
  inputs."webterminal-v0_0_1".owner = "riinr";
  inputs."webterminal-v0_0_1".repo = "flake-nimble";
  inputs."webterminal-v0_0_1".ref = "flake-pinning";
  inputs."webterminal-v0_0_1".dir = "nimpkgs/w/webterminal/v0_0_1";
  inputs."webterminal-v0_0_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."webterminal-v0_0_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."webterminal-v0_0_2".type = "github";
  inputs."webterminal-v0_0_2".owner = "riinr";
  inputs."webterminal-v0_0_2".repo = "flake-nimble";
  inputs."webterminal-v0_0_2".ref = "flake-pinning";
  inputs."webterminal-v0_0_2".dir = "nimpkgs/w/webterminal/v0_0_2";
  inputs."webterminal-v0_0_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."webterminal-v0_0_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}