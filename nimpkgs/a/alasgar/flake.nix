{
  description = ''Game Engine'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."alasgar-main".type = "github";
  inputs."alasgar-main".owner = "riinr";
  inputs."alasgar-main".repo = "flake-nimble";
  inputs."alasgar-main".ref = "flake-pinning";
  inputs."alasgar-main".dir = "nimpkgs/a/alasgar/main";
  inputs."alasgar-main".inputs.nixpkgs.follows = "nixpkgs";
  inputs."alasgar-main".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}