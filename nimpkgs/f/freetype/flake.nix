{
  description = ''wrapper for FreeType2 library'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."freetype-master".type = "github";
  inputs."freetype-master".owner = "riinr";
  inputs."freetype-master".repo = "flake-nimble";
  inputs."freetype-master".ref = "flake-pinning";
  inputs."freetype-master".dir = "nimpkgs/f/freetype/master";
  inputs."freetype-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."freetype-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}