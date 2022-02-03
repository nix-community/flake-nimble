{
  description = ''subhook wrapper'';
  inputs."subhook-master".url = "path:./master";
  inputs."subhook-0_1_0".url = "path:./0_1_0";
  inputs."subhook-0_1_1".url = "path:./0_1_1";
  inputs."subhook-0_1_2".url = "path:./0_1_2";
  inputs."subhook-0_4_2_0".url = "path:./0_4_2_0";
  inputs."subhook-0_5_0".url = "path:./0_5_0";
  inputs."subhook-0_5_1".url = "path:./0_5_1";
  inputs."subhook-0_5_2".url = "path:./0_5_2";
  inputs."subhook-0_5_3".url = "path:./0_5_3";
  inputs."subhook-0_5_5".url = "path:./0_5_5";
  outputs = { self, nixpkgs, ...}@inputs:
    let lib = import ./lib.nix;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}