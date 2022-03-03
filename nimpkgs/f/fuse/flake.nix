{
  description = ''A FUSE binding for Nim'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."fuse-master".type = "github";
  inputs."fuse-master".owner = "riinr";
  inputs."fuse-master".repo = "flake-nimble";
  inputs."fuse-master".ref = "flake-pinning";
  inputs."fuse-master".dir = "nimpkgs/f/fuse/master";
  inputs."fuse-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."fuse-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}