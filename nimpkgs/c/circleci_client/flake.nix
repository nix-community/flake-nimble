{
  description = ''CircleCI API client'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."circleci_client-master".type = "github";
  inputs."circleci_client-master".owner = "riinr";
  inputs."circleci_client-master".repo = "flake-nimble";
  inputs."circleci_client-master".ref = "flake-pinning";
  inputs."circleci_client-master".dir = "nimpkgs/c/circleci_client/master";
  inputs."circleci_client-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."circleci_client-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}