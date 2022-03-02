{
  description = ''Websockets wrapper for nim js backend.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."jswebsockets-master".type = "github";
  inputs."jswebsockets-master".owner = "riinr";
  inputs."jswebsockets-master".repo = "flake-nimble";
  inputs."jswebsockets-master".ref = "flake-pinning";
  inputs."jswebsockets-master".dir = "nimpkgs/j/jswebsockets/master";
  inputs."jswebsockets-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."jswebsockets-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."jswebsockets-0_1_2".type = "github";
  inputs."jswebsockets-0_1_2".owner = "riinr";
  inputs."jswebsockets-0_1_2".repo = "flake-nimble";
  inputs."jswebsockets-0_1_2".ref = "flake-pinning";
  inputs."jswebsockets-0_1_2".dir = "nimpkgs/j/jswebsockets/0_1_2";
  inputs."jswebsockets-0_1_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."jswebsockets-0_1_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."jswebsockets-0_1_3".type = "github";
  inputs."jswebsockets-0_1_3".owner = "riinr";
  inputs."jswebsockets-0_1_3".repo = "flake-nimble";
  inputs."jswebsockets-0_1_3".ref = "flake-pinning";
  inputs."jswebsockets-0_1_3".dir = "nimpkgs/j/jswebsockets/0_1_3";
  inputs."jswebsockets-0_1_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."jswebsockets-0_1_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}