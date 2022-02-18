{
  description = ''Definitions of various data structures used in the Ethereum eco-system'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-eth_common-master.flake = false;
  inputs.src-eth_common-master.type = "github";
  inputs.src-eth_common-master.owner = "status-im";
  inputs.src-eth_common-master.repo = "nim-eth-common";
  inputs.src-eth_common-master.ref = "refs/heads/master";
  
  
  inputs."rlp".type = "github";
  inputs."rlp".owner = "riinr";
  inputs."rlp".repo = "flake-nimble";
  inputs."rlp".ref = "flake-pinning";
  inputs."rlp".dir = "nimpkgs/r/rlp";

  
  inputs."eth_trie".type = "github";
  inputs."eth_trie".owner = "riinr";
  inputs."eth_trie".repo = "flake-nimble";
  inputs."eth_trie".ref = "flake-pinning";
  inputs."eth_trie".dir = "nimpkgs/e/eth_trie";

  
  inputs."nimcrypto".type = "github";
  inputs."nimcrypto".owner = "riinr";
  inputs."nimcrypto".repo = "flake-nimble";
  inputs."nimcrypto".ref = "flake-pinning";
  inputs."nimcrypto".dir = "nimpkgs/n/nimcrypto";

  
  inputs."ranges".type = "github";
  inputs."ranges".owner = "riinr";
  inputs."ranges".repo = "flake-nimble";
  inputs."ranges".ref = "flake-pinning";
  inputs."ranges".dir = "nimpkgs/r/ranges";

  
  inputs."stint".type = "github";
  inputs."stint".owner = "riinr";
  inputs."stint".repo = "flake-nimble";
  inputs."stint".ref = "flake-pinning";
  inputs."stint".dir = "nimpkgs/s/stint";

  
  inputs."byteutils".type = "github";
  inputs."byteutils".owner = "riinr";
  inputs."byteutils".repo = "flake-nimble";
  inputs."byteutils".ref = "flake-pinning";
  inputs."byteutils".dir = "nimpkgs/b/byteutils";

  outputs = { self, nixpkgs, flakeNimbleLib, src-eth_common-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-eth_common-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-eth_common-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}