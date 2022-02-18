{
  description = ''A collection of Ethereum related libraries'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-eth-master.flake = false;
  inputs.src-eth-master.type = "github";
  inputs.src-eth-master.owner = "status-im";
  inputs.src-eth-master.repo = "nim-eth";
  inputs.src-eth-master.ref = "refs/heads/master";
  
  
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

  
  inputs."secp256k1".type = "github";
  inputs."secp256k1".owner = "riinr";
  inputs."secp256k1".repo = "flake-nimble";
  inputs."secp256k1".ref = "flake-pinning";
  inputs."secp256k1".dir = "nimpkgs/s/secp256k1";

  
  inputs."rocksdb".type = "github";
  inputs."rocksdb".owner = "riinr";
  inputs."rocksdb".repo = "flake-nimble";
  inputs."rocksdb".ref = "flake-pinning";
  inputs."rocksdb".dir = "nimpkgs/r/rocksdb";

  
  inputs."chronos".type = "github";
  inputs."chronos".owner = "riinr";
  inputs."chronos".repo = "flake-nimble";
  inputs."chronos".ref = "flake-pinning";
  inputs."chronos".dir = "nimpkgs/c/chronos";

  
  inputs."chronicles".type = "github";
  inputs."chronicles".owner = "riinr";
  inputs."chronicles".repo = "flake-nimble";
  inputs."chronicles".ref = "flake-pinning";
  inputs."chronicles".dir = "nimpkgs/c/chronicles";

  
  inputs."stew".type = "github";
  inputs."stew".owner = "riinr";
  inputs."stew".repo = "flake-nimble";
  inputs."stew".ref = "flake-pinning";
  inputs."stew".dir = "nimpkgs/s/stew";

  
  inputs."nat_traversal".type = "github";
  inputs."nat_traversal".owner = "riinr";
  inputs."nat_traversal".repo = "flake-nimble";
  inputs."nat_traversal".ref = "flake-pinning";
  inputs."nat_traversal".dir = "nimpkgs/n/nat_traversal";

  
  inputs."metrics".type = "github";
  inputs."metrics".owner = "riinr";
  inputs."metrics".repo = "flake-nimble";
  inputs."metrics".ref = "flake-pinning";
  inputs."metrics".dir = "nimpkgs/m/metrics";

  
  inputs."sqlite3_abi".type = "github";
  inputs."sqlite3_abi".owner = "riinr";
  inputs."sqlite3_abi".repo = "flake-nimble";
  inputs."sqlite3_abi".ref = "flake-pinning";
  inputs."sqlite3_abi".dir = "nimpkgs/s/sqlite3_abi";

  
  inputs."confutils".type = "github";
  inputs."confutils".owner = "riinr";
  inputs."confutils".repo = "flake-nimble";
  inputs."confutils".ref = "flake-pinning";
  inputs."confutils".dir = "nimpkgs/c/confutils";

  
  inputs."testutils".type = "github";
  inputs."testutils".owner = "riinr";
  inputs."testutils".repo = "flake-nimble";
  inputs."testutils".ref = "flake-pinning";
  inputs."testutils".dir = "nimpkgs/t/testutils";

  
  inputs."unittest2".type = "github";
  inputs."unittest2".owner = "riinr";
  inputs."unittest2".repo = "flake-nimble";
  inputs."unittest2".ref = "flake-pinning";
  inputs."unittest2".dir = "nimpkgs/u/unittest2";

  outputs = { self, nixpkgs, flakeNimbleLib, src-eth-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-eth-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-eth-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}