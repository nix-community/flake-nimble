{
  description = ''A modular GUI toolkit for rapid'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."rdgui-master".type = "github";
  inputs."rdgui-master".owner = "riinr";
  inputs."rdgui-master".repo = "flake-nimble";
  inputs."rdgui-master".ref = "flake-pinning";
  inputs."rdgui-master".dir = "nimpkgs/r/rdgui/master";
  inputs."rdgui-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."rdgui-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}