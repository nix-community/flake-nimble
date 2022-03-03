{
  description = ''A collection of Ethereum related libraries'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."eth-master".type = "github";
  inputs."eth-master".owner = "riinr";
  inputs."eth-master".repo = "flake-nimble";
  inputs."eth-master".ref = "flake-pinning";
  inputs."eth-master".dir = "nimpkgs/e/eth/master";
  inputs."eth-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."eth-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}