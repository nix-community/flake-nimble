{
  description = ''A file system monitor in Nim.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."fsnotify-master".type = "github";
  inputs."fsnotify-master".owner = "riinr";
  inputs."fsnotify-master".repo = "flake-nimble";
  inputs."fsnotify-master".ref = "flake-pinning";
  inputs."fsnotify-master".dir = "nimpkgs/f/fsnotify/master";
  inputs."fsnotify-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."fsnotify-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}