{
  description = ''Definitions of various data structures used in the Ethereum eco-system'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."eth_common-master".type = "github";
  inputs."eth_common-master".owner = "riinr";
  inputs."eth_common-master".repo = "flake-nimble";
  inputs."eth_common-master".ref = "flake-pinning";
  inputs."eth_common-master".dir = "nimpkgs/e/eth_common/master";
  inputs."eth_common-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."eth_common-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}