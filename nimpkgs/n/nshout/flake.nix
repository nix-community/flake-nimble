{
  description = ''Nim bindings for libshout'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."nshout-master".type = "github";
  inputs."nshout-master".owner = "riinr";
  inputs."nshout-master".repo = "flake-nimble";
  inputs."nshout-master".ref = "flake-pinning";
  inputs."nshout-master".dir = "nimpkgs/n/nshout/master";
  inputs."nshout-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nshout-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}