{
  description = ''The Fast-Light Tool Kit'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."fltk-master".type = "github";
  inputs."fltk-master".owner = "riinr";
  inputs."fltk-master".repo = "flake-nimble";
  inputs."fltk-master".ref = "flake-pinning";
  inputs."fltk-master".dir = "nimpkgs/f/fltk/master";
  inputs."fltk-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."fltk-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}