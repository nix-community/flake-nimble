{
  description = ''IMAP client library'';
  inputs."imap-master".url = "path:./master";
  inputs."imap-v0_1_0".url = "path:./v0_1_0";
  inputs."imap-v0_2_0".url = "path:./v0_2_0";
  inputs."imap-v0_2_1".url = "path:./v0_2_1";
  inputs."imap-v0_2_2".url = "path:./v0_2_2";
  inputs."imap-v0_3_0".url = "path:./v0_3_0";
  outputs = { self, nixpkgs, ...}@inputs:
    let lib = import ./lib.nix;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}