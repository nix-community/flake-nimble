{
  description = ''Create memorable sentences from byte sequences.'';
  inputs.src-mnemonic-master.flake = false;
  inputs.src-mnemonic-master.type = "github";
  inputs.src-mnemonic-master.owner = "markspanbroek";
  inputs.src-mnemonic-master.repo = "mnemonic";
  inputs.src-mnemonic-master.ref = "refs/heads/master";
  
  
  inputs."nimsha2".url = "path:../../../n/nimsha2";
  inputs."nimsha2".type = "github";
  inputs."nimsha2".owner = "riinr";
  inputs."nimsha2".repo = "flake-nimble";
  inputs."nimsha2".ref = "flake-pinning";
  inputs."nimsha2".dir = "nimpkgs/n/nimsha2";

  outputs = { self, nixpkgs, src-mnemonic-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-mnemonic-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-mnemonic-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}