{
  description = ''Master Password algorith implementation'';
  inputs.src-masterpassword-master.flake = false;
  inputs.src-masterpassword-master.type = "github";
  inputs.src-masterpassword-master.owner = "SolitudeSF";
  inputs.src-masterpassword-master.repo = "masterpassword";
  inputs.src-masterpassword-master.ref = "refs/heads/master";
  
  
  inputs."nimcrypto".url = "path:../../../n/nimcrypto";
  inputs."nimcrypto".type = "github";
  inputs."nimcrypto".owner = "riinr";
  inputs."nimcrypto".repo = "flake-nimble";
  inputs."nimcrypto".ref = "flake-pinning";
  inputs."nimcrypto".dir = "nimpkgs/n/nimcrypto";

  outputs = { self, nixpkgs, src-masterpassword-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-masterpassword-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-masterpassword-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}