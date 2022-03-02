{
  description = ''Nim module for better URI handling'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."uri2-master".type = "github";
  inputs."uri2-master".owner = "riinr";
  inputs."uri2-master".repo = "flake-nimble";
  inputs."uri2-master".ref = "flake-pinning";
  inputs."uri2-master".dir = "nimpkgs/u/uri2/master";
  inputs."uri2-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."uri2-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}