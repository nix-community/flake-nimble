{
  description = ''Create memorable sentences from byte sequences.'';
  inputs."mnemonic-master".url = "path:./master";
  inputs."mnemonic-v0_1_0".url = "path:./v0_1_0";
  inputs."mnemonic-v0_1_1".url = "path:./v0_1_1";
  inputs."mnemonic-v0_1_2".url = "path:./v0_1_2";
  inputs."mnemonic-v0_1_3".url = "path:./v0_1_3";
  outputs = { self, nixpkgs, ...}@inputs:
    let lib = import ./lib.nix;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}