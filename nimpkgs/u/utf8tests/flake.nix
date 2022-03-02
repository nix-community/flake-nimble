{
  description = ''UTF-8 test cases and supporting code.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."utf8tests-main".type = "github";
  inputs."utf8tests-main".owner = "riinr";
  inputs."utf8tests-main".repo = "flake-nimble";
  inputs."utf8tests-main".ref = "flake-pinning";
  inputs."utf8tests-main".dir = "nimpkgs/u/utf8tests/main";
  inputs."utf8tests-main".inputs.nixpkgs.follows = "nixpkgs";
  inputs."utf8tests-main".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}