{
  description = ''Ethereum bloom filter (deprecated, now part of the 'eth' package)'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  inputs.src-eth_bloom-master.flake = false;
  inputs.src-eth_bloom-master.type = "github";
  inputs.src-eth_bloom-master.owner = "status-im";
  inputs.src-eth_bloom-master.repo = "nim-eth-bloom";
  inputs.src-eth_bloom-master.ref = "refs/heads/master";
  inputs.src-eth_bloom-master.inputs.nixpkgs.follows = "nixpkgs";
  
  
  # inputs."nimcrypto".type = "github";
  # inputs."nimcrypto".owner = "riinr";
  # inputs."nimcrypto".repo = "flake-nimble";
  # inputs."nimcrypto".ref = "flake-pinning";
  # inputs."nimcrypto".dir = "nimpkgs/n/nimcrypto";
  # inputs."nimcrypto".inputs.nixpkgs.follows = "nixpkgs";
  # inputs."nimcrypto".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  
  # inputs."stint".type = "github";
  # inputs."stint".owner = "riinr";
  # inputs."stint".repo = "flake-nimble";
  # inputs."stint".ref = "flake-pinning";
  # inputs."stint".dir = "nimpkgs/s/stint";
  # inputs."stint".inputs.nixpkgs.follows = "nixpkgs";
  # inputs."stint".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  outputs = { self, nixpkgs, flakeNimbleLib, src-eth_bloom-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-eth_bloom-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-eth_bloom-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}