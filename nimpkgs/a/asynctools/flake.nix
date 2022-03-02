{
  description = ''Various asynchronous tools for Nim'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."asynctools-master".type = "github";
  inputs."asynctools-master".owner = "riinr";
  inputs."asynctools-master".repo = "flake-nimble";
  inputs."asynctools-master".ref = "flake-pinning";
  inputs."asynctools-master".dir = "nimpkgs/a/asynctools/master";
  inputs."asynctools-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."asynctools-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}