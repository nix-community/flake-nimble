{
  description = ''Generate a shared library and bindings for many languages.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."genny-master".type = "github";
  inputs."genny-master".owner = "riinr";
  inputs."genny-master".repo = "flake-nimble";
  inputs."genny-master".ref = "flake-pinning";
  inputs."genny-master".dir = "nimpkgs/g/genny/master";
  inputs."genny-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."genny-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}