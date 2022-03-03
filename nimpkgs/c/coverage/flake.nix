{
  description = ''Code coverage library'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."coverage-master".type = "github";
  inputs."coverage-master".owner = "riinr";
  inputs."coverage-master".repo = "flake-nimble";
  inputs."coverage-master".ref = "flake-pinning";
  inputs."coverage-master".dir = "nimpkgs/c/coverage/master";
  inputs."coverage-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."coverage-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}