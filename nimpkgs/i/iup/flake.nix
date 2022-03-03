{
  description = ''Bindings for the IUP widget toolkit'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."iup-master".type = "github";
  inputs."iup-master".owner = "riinr";
  inputs."iup-master".repo = "flake-nimble";
  inputs."iup-master".ref = "flake-pinning";
  inputs."iup-master".dir = "nimpkgs/i/iup/master";
  inputs."iup-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."iup-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}