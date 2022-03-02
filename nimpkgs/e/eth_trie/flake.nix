{
  description = ''Merkle Patricia Tries as specified by Ethereum (deprecated, now part of the 'eth' package)'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."eth_trie-master".type = "github";
  inputs."eth_trie-master".owner = "riinr";
  inputs."eth_trie-master".repo = "flake-nimble";
  inputs."eth_trie-master".ref = "flake-pinning";
  inputs."eth_trie-master".dir = "nimpkgs/e/eth_trie/master";
  inputs."eth_trie-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."eth_trie-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}