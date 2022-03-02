{
  description = ''Nim port of Python's pwd module for working with the UNIX password file'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."pwd-master".type = "github";
  inputs."pwd-master".owner = "riinr";
  inputs."pwd-master".repo = "flake-nimble";
  inputs."pwd-master".ref = "flake-pinning";
  inputs."pwd-master".dir = "nimpkgs/p/pwd/master";
  inputs."pwd-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."pwd-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}