{
  description = ''A deprecated library for handling Ethereum private keys and wallets (now part of the 'eth' package)'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-eth_keyfile-master.flake = false;
  inputs.src-eth_keyfile-master.type = "github";
  inputs.src-eth_keyfile-master.owner = "status-im";
  inputs.src-eth_keyfile-master.repo = "nim-eth-keyfile";
  inputs.src-eth_keyfile-master.ref = "refs/heads/master";
  inputs.src-eth_keyfile-master.inputs.nixpkgs.follows = "nixpkgs";
  
  
  inputs."nimcrypto".type = "github";
  inputs."nimcrypto".owner = "riinr";
  inputs."nimcrypto".repo = "flake-nimble";
  inputs."nimcrypto".ref = "flake-pinning";
  inputs."nimcrypto".dir = "nimpkgs/n/nimcrypto";
  inputs."nimcrypto".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimcrypto".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  
  inputs."eth_keys".type = "github";
  inputs."eth_keys".owner = "riinr";
  inputs."eth_keys".repo = "flake-nimble";
  inputs."eth_keys".ref = "flake-pinning";
  inputs."eth_keys".dir = "nimpkgs/e/eth_keys";
  inputs."eth_keys".inputs.nixpkgs.follows = "nixpkgs";
  inputs."eth_keys".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  outputs = { self, nixpkgs, flakeNimbleLib, src-eth_keyfile-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-eth_keyfile-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-eth_keyfile-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}