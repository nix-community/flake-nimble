{
  description = ''A deprecated reimplementation in pure Nim of eth-keys, the common API for Ethereum key operations (now part of the 'eth' package).'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."eth_keys-master".type = "github";
  inputs."eth_keys-master".owner = "riinr";
  inputs."eth_keys-master".repo = "flake-nimble";
  inputs."eth_keys-master".ref = "flake-pinning";
  inputs."eth_keys-master".dir = "nimpkgs/e/eth_keys/master";
  inputs."eth_keys-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."eth_keys-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}