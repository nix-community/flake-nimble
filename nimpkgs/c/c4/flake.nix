{
  description = ''Game framework, modular and extensible'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."c4-master".type = "github";
  inputs."c4-master".owner = "riinr";
  inputs."c4-master".repo = "flake-nimble";
  inputs."c4-master".ref = "flake-pinning";
  inputs."c4-master".dir = "nimpkgs/c/c4/master";
  inputs."c4-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."c4-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}