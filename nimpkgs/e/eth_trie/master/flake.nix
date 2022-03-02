{
  description = ''Merkle Patricia Tries as specified by Ethereum (deprecated, now part of the 'eth' package)'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  inputs.src-eth_trie-master.flake = false;
  inputs.src-eth_trie-master.type = "github";
  inputs.src-eth_trie-master.owner = "status-im";
  inputs.src-eth_trie-master.repo = "nim-eth-trie";
  inputs.src-eth_trie-master.ref = "refs/heads/master";
  inputs.src-eth_trie-master.inputs.nixpkgs.follows = "nixpkgs";
  
  
  # inputs."rlp".type = "github";
  # inputs."rlp".owner = "riinr";
  # inputs."rlp".repo = "flake-nimble";
  # inputs."rlp".ref = "flake-pinning";
  # inputs."rlp".dir = "nimpkgs/r/rlp";
  # inputs."rlp".inputs.nixpkgs.follows = "nixpkgs";
  # inputs."rlp".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  
  # inputs."nimcrypto".type = "github";
  # inputs."nimcrypto".owner = "riinr";
  # inputs."nimcrypto".repo = "flake-nimble";
  # inputs."nimcrypto".ref = "flake-pinning";
  # inputs."nimcrypto".dir = "nimpkgs/n/nimcrypto";
  # inputs."nimcrypto".inputs.nixpkgs.follows = "nixpkgs";
  # inputs."nimcrypto".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  
  # inputs."ranges".type = "github";
  # inputs."ranges".owner = "riinr";
  # inputs."ranges".repo = "flake-nimble";
  # inputs."ranges".ref = "flake-pinning";
  # inputs."ranges".dir = "nimpkgs/r/ranges";
  # inputs."ranges".inputs.nixpkgs.follows = "nixpkgs";
  # inputs."ranges".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  
  # inputs."rocksdb".type = "github";
  # inputs."rocksdb".owner = "riinr";
  # inputs."rocksdb".repo = "flake-nimble";
  # inputs."rocksdb".ref = "flake-pinning";
  # inputs."rocksdb".dir = "nimpkgs/r/rocksdb";
  # inputs."rocksdb".inputs.nixpkgs.follows = "nixpkgs";
  # inputs."rocksdb".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  outputs = { self, nixpkgs, flakeNimbleLib, src-eth_trie-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-eth_trie-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-eth_trie-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}