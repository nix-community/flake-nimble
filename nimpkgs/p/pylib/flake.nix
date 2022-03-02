{
  description = ''Nim library with python-like functions and operators'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."pylib-master".type = "github";
  inputs."pylib-master".owner = "riinr";
  inputs."pylib-master".repo = "flake-nimble";
  inputs."pylib-master".ref = "flake-pinning";
  inputs."pylib-master".dir = "nimpkgs/p/pylib/master";
  inputs."pylib-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."pylib-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}