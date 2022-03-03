{
  description = ''RESTful URI router'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."nest-develop".type = "github";
  inputs."nest-develop".owner = "riinr";
  inputs."nest-develop".repo = "flake-nimble";
  inputs."nest-develop".ref = "flake-pinning";
  inputs."nest-develop".dir = "nimpkgs/n/nest/develop";
  inputs."nest-develop".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nest-develop".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."nest-master".type = "github";
  inputs."nest-master".owner = "riinr";
  inputs."nest-master".repo = "flake-nimble";
  inputs."nest-master".ref = "flake-pinning";
  inputs."nest-master".dir = "nimpkgs/n/nest/master";
  inputs."nest-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nest-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}