{
  description = ''Deprecated implementation of the Ethereum suite of P2P protocols (now part of the 'eth' package)'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-eth_p2p-master.flake = false;
  inputs.src-eth_p2p-master.type = "github";
  inputs.src-eth_p2p-master.owner = "status-im";
  inputs.src-eth_p2p-master.repo = "nim-eth-p2p";
  inputs.src-eth_p2p-master.ref = "refs/heads/master";
  
  
  inputs."rlp".type = "github";
  inputs."rlp".owner = "riinr";
  inputs."rlp".repo = "flake-nimble";
  inputs."rlp".ref = "flake-pinning";
  inputs."rlp".dir = "nimpkgs/r/rlp";

  
  inputs."nimcrypto".type = "github";
  inputs."nimcrypto".owner = "riinr";
  inputs."nimcrypto".repo = "flake-nimble";
  inputs."nimcrypto".ref = "flake-pinning";
  inputs."nimcrypto".dir = "nimpkgs/n/nimcrypto";

  
  inputs."secp256k1".type = "github";
  inputs."secp256k1".owner = "riinr";
  inputs."secp256k1".repo = "flake-nimble";
  inputs."secp256k1".ref = "flake-pinning";
  inputs."secp256k1".dir = "nimpkgs/s/secp256k1";

  
  inputs."eth_keys".type = "github";
  inputs."eth_keys".owner = "riinr";
  inputs."eth_keys".repo = "flake-nimble";
  inputs."eth_keys".ref = "flake-pinning";
  inputs."eth_keys".dir = "nimpkgs/e/eth_keys";

  
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

  
  inputs."chronicles".type = "github";
  inputs."chronicles".owner = "riinr";
  inputs."chronicles".repo = "flake-nimble";
  inputs."chronicles".ref = "flake-pinning";
  inputs."chronicles".dir = "nimpkgs/c/chronicles";

  
  inputs."asyncdispatch2".type = "github";
  inputs."asyncdispatch2".owner = "riinr";
  inputs."asyncdispatch2".repo = "flake-nimble";
  inputs."asyncdispatch2".ref = "flake-pinning";
  inputs."asyncdispatch2".dir = "nimpkgs/a/asyncdispatch2";

  
  inputs."eth_common".type = "github";
  inputs."eth_common".owner = "riinr";
  inputs."eth_common".repo = "flake-nimble";
  inputs."eth_common".ref = "flake-pinning";
  inputs."eth_common".dir = "nimpkgs/e/eth_common";

  
  inputs."snappy".type = "github";
  inputs."snappy".owner = "riinr";
  inputs."snappy".repo = "flake-nimble";
  inputs."snappy".ref = "flake-pinning";
  inputs."snappy".dir = "nimpkgs/s/snappy";

  
  inputs."package_visible_types".type = "github";
  inputs."package_visible_types".owner = "riinr";
  inputs."package_visible_types".repo = "flake-nimble";
  inputs."package_visible_types".ref = "flake-pinning";
  inputs."package_visible_types".dir = "nimpkgs/p/package_visible_types";

  
  inputs."serialization".type = "github";
  inputs."serialization".owner = "riinr";
  inputs."serialization".repo = "flake-nimble";
  inputs."serialization".ref = "flake-pinning";
  inputs."serialization".dir = "nimpkgs/s/serialization";

  
  inputs."json_serialization".type = "github";
  inputs."json_serialization".owner = "riinr";
  inputs."json_serialization".repo = "flake-nimble";
  inputs."json_serialization".ref = "flake-pinning";
  inputs."json_serialization".dir = "nimpkgs/j/json_serialization";

  outputs = { self, nixpkgs, flakeNimbleLib, src-eth_p2p-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-eth_p2p-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-eth_p2p-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}