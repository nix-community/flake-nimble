{
  description = ''Ethereum Web3 API'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-web3-master.flake = false;
  inputs.src-web3-master.type = "github";
  inputs.src-web3-master.owner = "status-im";
  inputs.src-web3-master.repo = "nim-web3";
  inputs.src-web3-master.ref = "refs/heads/master";
  inputs.src-web3-master.inputs.nixpkgs.follows = "nixpkgs";
  
  
  # inputs."chronicles".type = "github";
  # inputs."chronicles".owner = "riinr";
  # inputs."chronicles".repo = "flake-nimble";
  # inputs."chronicles".ref = "flake-pinning";
  # inputs."chronicles".dir = "nimpkgs/c/chronicles";
  # inputs."chronicles".inputs.nixpkgs.follows = "nixpkgs";
  # inputs."chronicles".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  
  # inputs."chronos".type = "github";
  # inputs."chronos".owner = "riinr";
  # inputs."chronos".repo = "flake-nimble";
  # inputs."chronos".ref = "flake-pinning";
  # inputs."chronos".dir = "nimpkgs/c/chronos";
  # inputs."chronos".inputs.nixpkgs.follows = "nixpkgs";
  # inputs."chronos".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  
  # inputs."eth".type = "github";
  # inputs."eth".owner = "riinr";
  # inputs."eth".repo = "flake-nimble";
  # inputs."eth".ref = "flake-pinning";
  # inputs."eth".dir = "nimpkgs/e/eth";
  # inputs."eth".inputs.nixpkgs.follows = "nixpkgs";
  # inputs."eth".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  
  # inputs."faststreams".type = "github";
  # inputs."faststreams".owner = "riinr";
  # inputs."faststreams".repo = "flake-nimble";
  # inputs."faststreams".ref = "flake-pinning";
  # inputs."faststreams".dir = "nimpkgs/f/faststreams";
  # inputs."faststreams".inputs.nixpkgs.follows = "nixpkgs";
  # inputs."faststreams".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  
  # inputs."json_rpc".type = "github";
  # inputs."json_rpc".owner = "riinr";
  # inputs."json_rpc".repo = "flake-nimble";
  # inputs."json_rpc".ref = "flake-pinning";
  # inputs."json_rpc".dir = "nimpkgs/j/json_rpc";
  # inputs."json_rpc".inputs.nixpkgs.follows = "nixpkgs";
  # inputs."json_rpc".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  
  # inputs."json_serialization".type = "github";
  # inputs."json_serialization".owner = "riinr";
  # inputs."json_serialization".repo = "flake-nimble";
  # inputs."json_serialization".ref = "flake-pinning";
  # inputs."json_serialization".dir = "nimpkgs/j/json_serialization";
  # inputs."json_serialization".inputs.nixpkgs.follows = "nixpkgs";
  # inputs."json_serialization".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  
  # inputs."nimcrypto".type = "github";
  # inputs."nimcrypto".owner = "riinr";
  # inputs."nimcrypto".repo = "flake-nimble";
  # inputs."nimcrypto".ref = "flake-pinning";
  # inputs."nimcrypto".dir = "nimpkgs/n/nimcrypto";
  # inputs."nimcrypto".inputs.nixpkgs.follows = "nixpkgs";
  # inputs."nimcrypto".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  
  # inputs."stew".type = "github";
  # inputs."stew".owner = "riinr";
  # inputs."stew".repo = "flake-nimble";
  # inputs."stew".ref = "flake-pinning";
  # inputs."stew".dir = "nimpkgs/s/stew";
  # inputs."stew".inputs.nixpkgs.follows = "nixpkgs";
  # inputs."stew".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  
  # inputs."stint".type = "github";
  # inputs."stint".owner = "riinr";
  # inputs."stint".repo = "flake-nimble";
  # inputs."stint".ref = "flake-pinning";
  # inputs."stint".dir = "nimpkgs/s/stint";
  # inputs."stint".inputs.nixpkgs.follows = "nixpkgs";
  # inputs."stint".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  outputs = { self, nixpkgs, flakeNimbleLib, src-web3-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-web3-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-web3-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}