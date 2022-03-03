{
  description = ''TinyFileDialogs for Nim.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."tinyfiledialogs-master".type = "github";
  inputs."tinyfiledialogs-master".owner = "riinr";
  inputs."tinyfiledialogs-master".repo = "flake-nimble";
  inputs."tinyfiledialogs-master".ref = "flake-pinning";
  inputs."tinyfiledialogs-master".dir = "nimpkgs/t/tinyfiledialogs/master";
  inputs."tinyfiledialogs-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."tinyfiledialogs-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}