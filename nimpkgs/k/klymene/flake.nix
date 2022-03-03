{
  description = ''Create beautiful command line interfaces in Nim. Based on docopt.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."klymene-main".type = "github";
  inputs."klymene-main".owner = "riinr";
  inputs."klymene-main".repo = "flake-nimble";
  inputs."klymene-main".ref = "flake-pinning";
  inputs."klymene-main".dir = "nimpkgs/k/klymene/main";
  inputs."klymene-main".inputs.nixpkgs.follows = "nixpkgs";
  inputs."klymene-main".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}