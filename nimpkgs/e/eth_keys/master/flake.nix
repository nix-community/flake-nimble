{
  description = ''A deprecated reimplementation in pure Nim of eth-keys, the common API for Ethereum key operations (now part of the 'eth' package).'';
  inputs.src-eth_keys-master.flake = false;
  inputs.src-eth_keys-master.type = "github";
  inputs.src-eth_keys-master.owner = "status-im";
  inputs.src-eth_keys-master.repo = "nim-eth-keys";
  inputs.src-eth_keys-master.ref = "refs/heads/master";
  
  
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

  outputs = { self, nixpkgs, src-eth_keys-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-eth_keys-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-eth_keys-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}