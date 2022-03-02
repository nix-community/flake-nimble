{
  description = ''Tiled map loader for the Nim programming language'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."nim_tiled-master".type = "github";
  inputs."nim_tiled-master".owner = "riinr";
  inputs."nim_tiled-master".repo = "flake-nimble";
  inputs."nim_tiled-master".ref = "flake-pinning";
  inputs."nim_tiled-master".dir = "nimpkgs/n/nim_tiled/master";
  inputs."nim_tiled-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nim_tiled-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}