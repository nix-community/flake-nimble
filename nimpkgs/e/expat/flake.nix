{
  description = ''Expat wrapper for Nim'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."expat-master".type = "github";
  inputs."expat-master".owner = "riinr";
  inputs."expat-master".repo = "flake-nimble";
  inputs."expat-master".ref = "flake-pinning";
  inputs."expat-master".dir = "nimpkgs/e/expat/master";
  inputs."expat-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."expat-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}