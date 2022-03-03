{
  description = ''A good alternative to Makefile.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."bs-main".type = "github";
  inputs."bs-main".owner = "riinr";
  inputs."bs-main".repo = "flake-nimble";
  inputs."bs-main".ref = "flake-pinning";
  inputs."bs-main".dir = "nimpkgs/b/bs/main";
  inputs."bs-main".inputs.nixpkgs.follows = "nixpkgs";
  inputs."bs-main".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}