{
  description = ''A collection of Ethereum related libraries'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-eth-master.flake = false;
  inputs.src-eth-master.type = "github";
  inputs.src-eth-master.owner = "status-im";
  inputs.src-eth-master.repo = "nim-eth";
  inputs.src-eth-master.ref = "refs/heads/master";
  inputs.src-eth-master.inputs.nixpkgs.follows = "nixpkgs";
  
  
  inputs."nimcrypto".type = "github";
  inputs."nimcrypto".owner = "riinr";
  inputs."nimcrypto".repo = "flake-nimble";
  inputs."nimcrypto".ref = "flake-pinning";
  inputs."nimcrypto".dir = "nimpkgs/n/nimcrypto";
  inputs."nimcrypto".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimcrypto".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  
  inputs."stint".type = "github";
  inputs."stint".owner = "riinr";
  inputs."stint".repo = "flake-nimble";
  inputs."stint".ref = "flake-pinning";
  inputs."stint".dir = "nimpkgs/s/stint";
  inputs."stint".inputs.nixpkgs.follows = "nixpkgs";
  inputs."stint".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  
  inputs."secp256k1".type = "github";
  inputs."secp256k1".owner = "riinr";
  inputs."secp256k1".repo = "flake-nimble";
  inputs."secp256k1".ref = "flake-pinning";
  inputs."secp256k1".dir = "nimpkgs/s/secp256k1";
  inputs."secp256k1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."secp256k1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  
  inputs."rocksdb".type = "github";
  inputs."rocksdb".owner = "riinr";
  inputs."rocksdb".repo = "flake-nimble";
  inputs."rocksdb".ref = "flake-pinning";
  inputs."rocksdb".dir = "nimpkgs/r/rocksdb";
  inputs."rocksdb".inputs.nixpkgs.follows = "nixpkgs";
  inputs."rocksdb".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  
  inputs."chronos".type = "github";
  inputs."chronos".owner = "riinr";
  inputs."chronos".repo = "flake-nimble";
  inputs."chronos".ref = "flake-pinning";
  inputs."chronos".dir = "nimpkgs/c/chronos";
  inputs."chronos".inputs.nixpkgs.follows = "nixpkgs";
  inputs."chronos".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  
  inputs."chronicles".type = "github";
  inputs."chronicles".owner = "riinr";
  inputs."chronicles".repo = "flake-nimble";
  inputs."chronicles".ref = "flake-pinning";
  inputs."chronicles".dir = "nimpkgs/c/chronicles";
  inputs."chronicles".inputs.nixpkgs.follows = "nixpkgs";
  inputs."chronicles".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  
  inputs."stew".type = "github";
  inputs."stew".owner = "riinr";
  inputs."stew".repo = "flake-nimble";
  inputs."stew".ref = "flake-pinning";
  inputs."stew".dir = "nimpkgs/s/stew";
  inputs."stew".inputs.nixpkgs.follows = "nixpkgs";
  inputs."stew".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  
  inputs."nat_traversal".type = "github";
  inputs."nat_traversal".owner = "riinr";
  inputs."nat_traversal".repo = "flake-nimble";
  inputs."nat_traversal".ref = "flake-pinning";
  inputs."nat_traversal".dir = "nimpkgs/n/nat_traversal";
  inputs."nat_traversal".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nat_traversal".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  
  inputs."metrics".type = "github";
  inputs."metrics".owner = "riinr";
  inputs."metrics".repo = "flake-nimble";
  inputs."metrics".ref = "flake-pinning";
  inputs."metrics".dir = "nimpkgs/m/metrics";
  inputs."metrics".inputs.nixpkgs.follows = "nixpkgs";
  inputs."metrics".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  
  inputs."sqlite3_abi".type = "github";
  inputs."sqlite3_abi".owner = "riinr";
  inputs."sqlite3_abi".repo = "flake-nimble";
  inputs."sqlite3_abi".ref = "flake-pinning";
  inputs."sqlite3_abi".dir = "nimpkgs/s/sqlite3_abi";
  inputs."sqlite3_abi".inputs.nixpkgs.follows = "nixpkgs";
  inputs."sqlite3_abi".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  
  inputs."confutils".type = "github";
  inputs."confutils".owner = "riinr";
  inputs."confutils".repo = "flake-nimble";
  inputs."confutils".ref = "flake-pinning";
  inputs."confutils".dir = "nimpkgs/c/confutils";
  inputs."confutils".inputs.nixpkgs.follows = "nixpkgs";
  inputs."confutils".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  
  inputs."testutils".type = "github";
  inputs."testutils".owner = "riinr";
  inputs."testutils".repo = "flake-nimble";
  inputs."testutils".ref = "flake-pinning";
  inputs."testutils".dir = "nimpkgs/t/testutils";
  inputs."testutils".inputs.nixpkgs.follows = "nixpkgs";
  inputs."testutils".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  
  inputs."unittest2".type = "github";
  inputs."unittest2".owner = "riinr";
  inputs."unittest2".repo = "flake-nimble";
  inputs."unittest2".ref = "flake-pinning";
  inputs."unittest2".dir = "nimpkgs/u/unittest2";
  inputs."unittest2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."unittest2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  outputs = { self, nixpkgs, flakeNimbleLib, src-eth-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-eth-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-eth-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}