{
  description = ''Design by Contract (DbC) library with minimal runtime.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."contracts-main".type = "github";
  inputs."contracts-main".owner = "riinr";
  inputs."contracts-main".repo = "flake-nimble";
  inputs."contracts-main".ref = "flake-pinning";
  inputs."contracts-main".dir = "nimpkgs/c/contracts/main";
  inputs."contracts-main".inputs.nixpkgs.follows = "nixpkgs";
  inputs."contracts-main".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}