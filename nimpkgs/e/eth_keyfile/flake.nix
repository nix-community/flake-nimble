{
  description = ''A deprecated library for handling Ethereum private keys and wallets (now part of the 'eth' package)'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."eth_keyfile-master".type = "github";
  inputs."eth_keyfile-master".owner = "riinr";
  inputs."eth_keyfile-master".repo = "flake-nimble";
  inputs."eth_keyfile-master".ref = "flake-pinning";
  inputs."eth_keyfile-master".dir = "nimpkgs/e/eth_keyfile/master";
  inputs."eth_keyfile-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."eth_keyfile-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}