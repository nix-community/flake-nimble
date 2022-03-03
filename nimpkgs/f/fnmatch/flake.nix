{
  description = ''Nim module for filename matching with UNIX shell patterns'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."fnmatch-master".type = "github";
  inputs."fnmatch-master".owner = "riinr";
  inputs."fnmatch-master".repo = "flake-nimble";
  inputs."fnmatch-master".ref = "flake-pinning";
  inputs."fnmatch-master".dir = "nimpkgs/f/fnmatch/master";
  inputs."fnmatch-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."fnmatch-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}