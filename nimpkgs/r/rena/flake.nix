{
  description = ''rena is a tiny fire/directory renaming command.'';
  inputs."rena-master".url = "path:./master";
  inputs."rena-v1_0_0".url = "path:./v1_0_0";
  inputs."rena-v1_0_1".url = "path:./v1_0_1";
  outputs = { self, nixpkgs, ...}@inputs:
    let lib = import ./lib.nix;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}