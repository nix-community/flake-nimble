{
  description = ''Useful utilities for manipulating and visualizing byte blobs'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."byteutils-master".type = "github";
  inputs."byteutils-master".owner = "riinr";
  inputs."byteutils-master".repo = "flake-nimble";
  inputs."byteutils-master".ref = "flake-pinning";
  inputs."byteutils-master".dir = "nimpkgs/b/byteutils/master";
  inputs."byteutils-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."byteutils-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}