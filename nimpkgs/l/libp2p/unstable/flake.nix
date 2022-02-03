{
  description = ''libp2p implementation in Nim'';
  inputs.src-libp2p-unstable.flake = false;
  inputs.src-libp2p-unstable.type = "github";
  inputs.src-libp2p-unstable.owner = "status-im";
  inputs.src-libp2p-unstable.repo = "nim-libp2p";
  inputs.src-libp2p-unstable.ref = "refs/heads/unstable";
  
  
  inputs."nimcrypto".url = "path:../../../n/nimcrypto";
  inputs."nimcrypto".type = "github";
  inputs."nimcrypto".owner = "riinr";
  inputs."nimcrypto".repo = "flake-nimble";
  inputs."nimcrypto".ref = "flake-pinning";
  inputs."nimcrypto".dir = "nimpkgs/n/nimcrypto";

  
  inputs."dnsclient".url = "path:../../../d/dnsclient";
  inputs."dnsclient".type = "github";
  inputs."dnsclient".owner = "riinr";
  inputs."dnsclient".repo = "flake-nimble";
  inputs."dnsclient".ref = "flake-pinning";
  inputs."dnsclient".dir = "nimpkgs/d/dnsclient";

  
  inputs."bearssl".url = "path:../../../b/bearssl";
  inputs."bearssl".type = "github";
  inputs."bearssl".owner = "riinr";
  inputs."bearssl".repo = "flake-nimble";
  inputs."bearssl".ref = "flake-pinning";
  inputs."bearssl".dir = "nimpkgs/b/bearssl";

  
  inputs."chronicles".url = "path:../../../c/chronicles";
  inputs."chronicles".type = "github";
  inputs."chronicles".owner = "riinr";
  inputs."chronicles".repo = "flake-nimble";
  inputs."chronicles".ref = "flake-pinning";
  inputs."chronicles".dir = "nimpkgs/c/chronicles";

  
  inputs."chronos".url = "path:../../../c/chronos";
  inputs."chronos".type = "github";
  inputs."chronos".owner = "riinr";
  inputs."chronos".repo = "flake-nimble";
  inputs."chronos".ref = "flake-pinning";
  inputs."chronos".dir = "nimpkgs/c/chronos";

  
  inputs."metrics".url = "path:../../../m/metrics";
  inputs."metrics".type = "github";
  inputs."metrics".owner = "riinr";
  inputs."metrics".repo = "flake-nimble";
  inputs."metrics".ref = "flake-pinning";
  inputs."metrics".dir = "nimpkgs/m/metrics";

  
  inputs."secp256k1".url = "path:../../../s/secp256k1";
  inputs."secp256k1".type = "github";
  inputs."secp256k1".owner = "riinr";
  inputs."secp256k1".repo = "flake-nimble";
  inputs."secp256k1".ref = "flake-pinning";
  inputs."secp256k1".dir = "nimpkgs/s/secp256k1";

  
  inputs."stew".url = "path:../../../s/stew";
  inputs."stew".type = "github";
  inputs."stew".owner = "riinr";
  inputs."stew".repo = "flake-nimble";
  inputs."stew".ref = "flake-pinning";
  inputs."stew".dir = "nimpkgs/s/stew";

  
  inputs."websock".url = "path:../../../w/websock";
  inputs."websock".type = "github";
  inputs."websock".owner = "riinr";
  inputs."websock".repo = "flake-nimble";
  inputs."websock".ref = "flake-pinning";
  inputs."websock".dir = "nimpkgs/w/websock";

  outputs = { self, nixpkgs, src-libp2p-unstable, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-libp2p-unstable;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-libp2p-unstable"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}