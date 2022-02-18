{
  description = ''A deprecated library for handling Ethereum private keys and wallets (now part of the 'eth' package)'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-eth_keyfile-master.flake = false;
  inputs.src-eth_keyfile-master.type = "github";
  inputs.src-eth_keyfile-master.owner = "status-im";
  inputs.src-eth_keyfile-master.repo = "nim-eth-keyfile";
  inputs.src-eth_keyfile-master.ref = "refs/heads/master";
  
  
  inputs."nimcrypto".type = "github";
  inputs."nimcrypto".owner = "riinr";
  inputs."nimcrypto".repo = "flake-nimble";
  inputs."nimcrypto".ref = "flake-pinning";
  inputs."nimcrypto".dir = "nimpkgs/n/nimcrypto";

  
  inputs."eth_keys".type = "github";
  inputs."eth_keys".owner = "riinr";
  inputs."eth_keys".repo = "flake-nimble";
  inputs."eth_keys".ref = "flake-pinning";
  inputs."eth_keys".dir = "nimpkgs/e/eth_keys";

  outputs = { self, nixpkgs, flakeNimbleLib, src-eth_keyfile-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-eth_keyfile-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-eth_keyfile-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}