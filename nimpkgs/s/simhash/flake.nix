{
  description = ''Nim implementation of simhash algoritim'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."simhash-master".type = "github";
  inputs."simhash-master".owner = "riinr";
  inputs."simhash-master".repo = "flake-nimble";
  inputs."simhash-master".ref = "flake-pinning";
  inputs."simhash-master".dir = "nimpkgs/s/simhash/master";
  inputs."simhash-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."simhash-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}