{
  description = ''Code expander for competitive programing in Nim.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."expander-main".type = "github";
  inputs."expander-main".owner = "riinr";
  inputs."expander-main".repo = "flake-nimble";
  inputs."expander-main".ref = "flake-pinning";
  inputs."expander-main".dir = "nimpkgs/e/expander/main";
  inputs."expander-main".inputs.nixpkgs.follows = "nixpkgs";
  inputs."expander-main".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}