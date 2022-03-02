{
  description = ''Composition pattern with event handling library in Nim'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."composition-main".type = "github";
  inputs."composition-main".owner = "riinr";
  inputs."composition-main".repo = "flake-nimble";
  inputs."composition-main".ref = "flake-pinning";
  inputs."composition-main".dir = "nimpkgs/c/composition/main";
  inputs."composition-main".inputs.nixpkgs.follows = "nixpkgs";
  inputs."composition-main".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}