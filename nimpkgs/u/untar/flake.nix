{
  description = ''Library for decompressing tar.gz files.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."untar-master".type = "github";
  inputs."untar-master".owner = "riinr";
  inputs."untar-master".repo = "flake-nimble";
  inputs."untar-master".ref = "flake-pinning";
  inputs."untar-master".dir = "nimpkgs/u/untar/master";
  inputs."untar-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."untar-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}