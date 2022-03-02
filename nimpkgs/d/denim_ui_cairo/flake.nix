{
  description = ''Cairo backend for the denim ui engine'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."denim_ui_cairo-master".type = "github";
  inputs."denim_ui_cairo-master".owner = "riinr";
  inputs."denim_ui_cairo-master".repo = "flake-nimble";
  inputs."denim_ui_cairo-master".ref = "flake-pinning";
  inputs."denim_ui_cairo-master".dir = "nimpkgs/d/denim_ui_cairo/master";
  inputs."denim_ui_cairo-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."denim_ui_cairo-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}