{
  description = ''Master Password algorith implementation'';
  inputs.src-masterpassword-v0_2_1.flake = false;
  inputs.src-masterpassword-v0_2_1.type = "github";
  inputs.src-masterpassword-v0_2_1.owner = "SolitudeSF";
  inputs.src-masterpassword-v0_2_1.repo = "masterpassword";
  inputs.src-masterpassword-v0_2_1.ref = "refs/tags/v0.2.1";
  
  
  inputs."nimcrypto".url = "path:../../../n/nimcrypto";
  inputs."nimcrypto".type = "github";
  inputs."nimcrypto".owner = "riinr";
  inputs."nimcrypto".repo = "flake-nimble";
  inputs."nimcrypto".ref = "flake-pinning";
  inputs."nimcrypto".dir = "nimpkgs/n/nimcrypto";

  outputs = { self, nixpkgs, src-masterpassword-v0_2_1, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-masterpassword-v0_2_1;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-masterpassword-v0_2_1"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}