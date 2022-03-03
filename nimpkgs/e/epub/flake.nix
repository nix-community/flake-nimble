{
  description = ''Module for working with EPUB e-book files'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."epub-master".type = "github";
  inputs."epub-master".owner = "riinr";
  inputs."epub-master".repo = "flake-nimble";
  inputs."epub-master".ref = "flake-pinning";
  inputs."epub-master".dir = "nimpkgs/e/epub/master";
  inputs."epub-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."epub-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}