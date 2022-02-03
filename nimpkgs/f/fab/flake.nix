{
  description = ''Print fabulously in your terminal'';
  inputs."fab-master".url = "path:./master";
  inputs."fab-v0_1_0".url = "path:./v0_1_0";
  inputs."fab-v0_2_0".url = "path:./v0_2_0";
  inputs."fab-v0_3_0".url = "path:./v0_3_0";
  inputs."fab-v0_3_1".url = "path:./v0_3_1";
  inputs."fab-v0_4_0".url = "path:./v0_4_0";
  inputs."fab-v0_4_1".url = "path:./v0_4_1";
  inputs."fab-v0_4_2".url = "path:./v0_4_2";
  inputs."fab-v0_4_3".url = "path:./v0_4_3";
  inputs."fab-v0_4_4".url = "path:./v0_4_4";
  outputs = { self, nixpkgs, ...}@inputs:
    let lib = import ./lib.nix;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}