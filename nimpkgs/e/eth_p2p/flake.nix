{
  description = ''Deprecated implementation of the Ethereum suite of P2P protocols (now part of the 'eth' package)'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."eth_p2p-master".type = "github";
  inputs."eth_p2p-master".owner = "riinr";
  inputs."eth_p2p-master".repo = "flake-nimble";
  inputs."eth_p2p-master".ref = "flake-pinning";
  inputs."eth_p2p-master".dir = "nimpkgs/e/eth_p2p/master";
  inputs."eth_p2p-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."eth_p2p-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}