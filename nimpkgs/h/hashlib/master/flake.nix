{
  description = ''Hash Library for Nim'';
  inputs.src-hashlib-master.flake = false;
  inputs.src-hashlib-master.type = "github";
  inputs.src-hashlib-master.owner = "khchen";
  inputs.src-hashlib-master.repo = "hashlib";
  inputs.src-hashlib-master.ref = "refs/heads/master";
  
  
  inputs."nimcrypto".type = "github";
  inputs."nimcrypto".owner = "riinr";
  inputs."nimcrypto".repo = "flake-nimble";
  inputs."nimcrypto".ref = "flake-pinning";
  inputs."nimcrypto".dir = "nimpkgs/n/nimcrypto";

  outputs = { self, nixpkgs, src-hashlib-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-hashlib-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-hashlib-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}