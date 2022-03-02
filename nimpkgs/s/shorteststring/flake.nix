{
  description = ''word size strings stored in an integer'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."shorteststring-master".type = "github";
  inputs."shorteststring-master".owner = "riinr";
  inputs."shorteststring-master".repo = "flake-nimble";
  inputs."shorteststring-master".ref = "flake-pinning";
  inputs."shorteststring-master".dir = "nimpkgs/s/shorteststring/master";
  inputs."shorteststring-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."shorteststring-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."shorteststring-v0_1_0".type = "github";
  inputs."shorteststring-v0_1_0".owner = "riinr";
  inputs."shorteststring-v0_1_0".repo = "flake-nimble";
  inputs."shorteststring-v0_1_0".ref = "flake-pinning";
  inputs."shorteststring-v0_1_0".dir = "nimpkgs/s/shorteststring/v0_1_0";
  inputs."shorteststring-v0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."shorteststring-v0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}