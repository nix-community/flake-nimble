{
  description = ''Ethereum Web3 API'';
  inputs.src-web3-master.flake = false;
  inputs.src-web3-master.type = "github";
  inputs.src-web3-master.owner = "status-im";
  inputs.src-web3-master.repo = "nim-web3";
  inputs.src-web3-master.ref = "refs/heads/master";
  
  
  inputs."chronicles".type = "github";
  inputs."chronicles".owner = "riinr";
  inputs."chronicles".repo = "flake-nimble";
  inputs."chronicles".ref = "flake-pinning";
  inputs."chronicles".dir = "nimpkgs/c/chronicles";

  
  inputs."chronos".type = "github";
  inputs."chronos".owner = "riinr";
  inputs."chronos".repo = "flake-nimble";
  inputs."chronos".ref = "flake-pinning";
  inputs."chronos".dir = "nimpkgs/c/chronos";

  
  inputs."eth".type = "github";
  inputs."eth".owner = "riinr";
  inputs."eth".repo = "flake-nimble";
  inputs."eth".ref = "flake-pinning";
  inputs."eth".dir = "nimpkgs/e/eth";

  
  inputs."faststreams".type = "github";
  inputs."faststreams".owner = "riinr";
  inputs."faststreams".repo = "flake-nimble";
  inputs."faststreams".ref = "flake-pinning";
  inputs."faststreams".dir = "nimpkgs/f/faststreams";

  
  inputs."json_rpc".type = "github";
  inputs."json_rpc".owner = "riinr";
  inputs."json_rpc".repo = "flake-nimble";
  inputs."json_rpc".ref = "flake-pinning";
  inputs."json_rpc".dir = "nimpkgs/j/json_rpc";

  
  inputs."json_serialization".type = "github";
  inputs."json_serialization".owner = "riinr";
  inputs."json_serialization".repo = "flake-nimble";
  inputs."json_serialization".ref = "flake-pinning";
  inputs."json_serialization".dir = "nimpkgs/j/json_serialization";

  
  inputs."nimcrypto".type = "github";
  inputs."nimcrypto".owner = "riinr";
  inputs."nimcrypto".repo = "flake-nimble";
  inputs."nimcrypto".ref = "flake-pinning";
  inputs."nimcrypto".dir = "nimpkgs/n/nimcrypto";

  
  inputs."stew".type = "github";
  inputs."stew".owner = "riinr";
  inputs."stew".repo = "flake-nimble";
  inputs."stew".ref = "flake-pinning";
  inputs."stew".dir = "nimpkgs/s/stew";

  
  inputs."stint".type = "github";
  inputs."stint".owner = "riinr";
  inputs."stint".repo = "flake-nimble";
  inputs."stint".ref = "flake-pinning";
  inputs."stint".dir = "nimpkgs/s/stint";

  outputs = { self, nixpkgs, src-web3-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-web3-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-web3-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}