{
  description = ''event emitter for nim'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."eventemitter-master".type = "github";
  inputs."eventemitter-master".owner = "riinr";
  inputs."eventemitter-master".repo = "flake-nimble";
  inputs."eventemitter-master".ref = "flake-pinning";
  inputs."eventemitter-master".dir = "nimpkgs/e/eventemitter/master";
  inputs."eventemitter-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."eventemitter-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}