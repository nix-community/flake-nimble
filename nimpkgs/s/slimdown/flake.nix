{
  description = ''Nim module that converts Markdown text to HTML using only regular expressions. Based on jbroadway's Slimdown.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."slimdown-master".type = "github";
  inputs."slimdown-master".owner = "riinr";
  inputs."slimdown-master".repo = "flake-nimble";
  inputs."slimdown-master".ref = "flake-pinning";
  inputs."slimdown-master".dir = "nimpkgs/s/slimdown/master";
  inputs."slimdown-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."slimdown-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."slimdown-0_0_1".type = "github";
  inputs."slimdown-0_0_1".owner = "riinr";
  inputs."slimdown-0_0_1".repo = "flake-nimble";
  inputs."slimdown-0_0_1".ref = "flake-pinning";
  inputs."slimdown-0_0_1".dir = "nimpkgs/s/slimdown/0_0_1";
  inputs."slimdown-0_0_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."slimdown-0_0_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}