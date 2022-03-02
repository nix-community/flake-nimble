{
  description = ''A library to provide abstract access to various archives.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."physfs-master".type = "github";
  inputs."physfs-master".owner = "riinr";
  inputs."physfs-master".repo = "flake-nimble";
  inputs."physfs-master".ref = "flake-pinning";
  inputs."physfs-master".dir = "nimpkgs/p/physfs/master";
  inputs."physfs-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."physfs-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}