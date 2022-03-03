{
  description = ''Simple extensible implementation of Porter stemmer algorithm'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."porter-master".type = "github";
  inputs."porter-master".owner = "riinr";
  inputs."porter-master".repo = "flake-nimble";
  inputs."porter-master".ref = "flake-pinning";
  inputs."porter-master".dir = "nimpkgs/p/porter/master";
  inputs."porter-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."porter-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}