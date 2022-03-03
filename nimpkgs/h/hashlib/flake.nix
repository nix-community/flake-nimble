{
  description = ''Hash Library for Nim'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."hashlib-master".type = "github";
  inputs."hashlib-master".owner = "riinr";
  inputs."hashlib-master".repo = "flake-nimble";
  inputs."hashlib-master".ref = "flake-pinning";
  inputs."hashlib-master".dir = "nimpkgs/h/hashlib/master";
  inputs."hashlib-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."hashlib-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}