{
  description = ''Tuple manipulation utilities'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."tuples-master".type = "github";
  inputs."tuples-master".owner = "riinr";
  inputs."tuples-master".repo = "flake-nimble";
  inputs."tuples-master".ref = "flake-pinning";
  inputs."tuples-master".dir = "nimpkgs/t/tuples/master";
  inputs."tuples-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."tuples-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}