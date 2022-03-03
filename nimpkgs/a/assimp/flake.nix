{
  description = ''Wrapper for the assimp library'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."assimp-master".type = "github";
  inputs."assimp-master".owner = "riinr";
  inputs."assimp-master".repo = "flake-nimble";
  inputs."assimp-master".ref = "flake-pinning";
  inputs."assimp-master".dir = "nimpkgs/a/assimp/master";
  inputs."assimp-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."assimp-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}