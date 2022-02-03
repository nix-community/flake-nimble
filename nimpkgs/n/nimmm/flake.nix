{
  description = ''A terminal file manager written in nim'';
  inputs."nimmm-master".url = "path:./master";
  inputs."nimmm-v0_0_1".url = "path:./v0_0_1";
  inputs."nimmm-v0_1_0".url = "path:./v0_1_0";
  inputs."nimmm-v0_1_1".url = "path:./v0_1_1";
  inputs."nimmm-v0_1_2".url = "path:./v0_1_2";
  inputs."nimmm-v0_2_0".url = "path:./v0_2_0";
  outputs = { self, nixpkgs, ...}@inputs:
    let lib = import ./lib.nix;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}