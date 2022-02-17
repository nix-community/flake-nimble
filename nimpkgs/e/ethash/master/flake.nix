{
  description = ''A Nim implementation of Ethash, the ethereum proof-of-work hashing function'';
  inputs.src-ethash-master.flake = false;
  inputs.src-ethash-master.type = "github";
  inputs.src-ethash-master.owner = "status-im";
  inputs.src-ethash-master.repo = "nim-ethash";
  inputs.src-ethash-master.ref = "refs/heads/master";
  
  
  inputs."nimcrypto".type = "github";
  inputs."nimcrypto".owner = "riinr";
  inputs."nimcrypto".repo = "flake-nimble";
  inputs."nimcrypto".ref = "flake-pinning";
  inputs."nimcrypto".dir = "nimpkgs/n/nimcrypto";

  outputs = { self, nixpkgs, src-ethash-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-ethash-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-ethash-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}