{
  description = ''A Protocol Buffers library for Nim'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."nimpb-master".type = "github";
  inputs."nimpb-master".owner = "riinr";
  inputs."nimpb-master".repo = "flake-nimble";
  inputs."nimpb-master".ref = "flake-pinning";
  inputs."nimpb-master".dir = "nimpkgs/n/nimpb/master";
  inputs."nimpb-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimpb-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}