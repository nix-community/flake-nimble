{
  description = ''Tencil is a mustache-compatible JSON based template engine for Nim.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."tencil-main".type = "github";
  inputs."tencil-main".owner = "riinr";
  inputs."tencil-main".repo = "flake-nimble";
  inputs."tencil-main".ref = "flake-pinning";
  inputs."tencil-main".dir = "nimpkgs/t/tencil/main";
  inputs."tencil-main".inputs.nixpkgs.follows = "nixpkgs";
  inputs."tencil-main".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}