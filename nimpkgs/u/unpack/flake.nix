{
  description = ''Array/Sequence/Object destructuring/unpacking macro'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."unpack-master".type = "github";
  inputs."unpack-master".owner = "riinr";
  inputs."unpack-master".repo = "flake-nimble";
  inputs."unpack-master".ref = "flake-pinning";
  inputs."unpack-master".dir = "nimpkgs/u/unpack/master";
  inputs."unpack-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."unpack-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}