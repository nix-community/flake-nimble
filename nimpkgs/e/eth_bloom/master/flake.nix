{
  description = ''Ethereum bloom filter (deprecated, now part of the 'eth' package)'';
  inputs.src-eth_bloom-master.flake = false;
  inputs.src-eth_bloom-master.type = "github";
  inputs.src-eth_bloom-master.owner = "status-im";
  inputs.src-eth_bloom-master.repo = "nim-eth-bloom";
  inputs.src-eth_bloom-master.ref = "refs/heads/master";
  
  
  inputs."nimcrypto".type = "github";
  inputs."nimcrypto".owner = "riinr";
  inputs."nimcrypto".repo = "flake-nimble";
  inputs."nimcrypto".ref = "flake-pinning";
  inputs."nimcrypto".dir = "nimpkgs/n/nimcrypto";

  
  inputs."stint".type = "github";
  inputs."stint".owner = "riinr";
  inputs."stint".repo = "flake-nimble";
  inputs."stint".ref = "flake-pinning";
  inputs."stint".dir = "nimpkgs/s/stint";

  outputs = { self, nixpkgs, src-eth_bloom-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-eth_bloom-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-eth_bloom-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}