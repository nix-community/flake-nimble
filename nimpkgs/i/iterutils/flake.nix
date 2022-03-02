{
  description = ''Functional operations for iterators and slices, similar to sequtils'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."iterutils-master".type = "github";
  inputs."iterutils-master".owner = "riinr";
  inputs."iterutils-master".repo = "flake-nimble";
  inputs."iterutils-master".ref = "flake-pinning";
  inputs."iterutils-master".dir = "nimpkgs/i/iterutils/master";
  inputs."iterutils-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."iterutils-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}