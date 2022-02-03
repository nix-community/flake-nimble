{
  description = ''IPC interface to sway (or i3) compositors'';
  inputs."swayipc-master".url = "path:./master";
  inputs."swayipc-1_1_0".url = "path:./1_1_0";
  inputs."swayipc-1_1_1".url = "path:./1_1_1";
  inputs."swayipc-2_0_0".url = "path:./2_0_0";
  inputs."swayipc-2_0_1".url = "path:./2_0_1";
  inputs."swayipc-2_0_2".url = "path:./2_0_2";
  inputs."swayipc-2_0_3".url = "path:./2_0_3";
  inputs."swayipc-3_0_0".url = "path:./3_0_0";
  inputs."swayipc-3_0_1".url = "path:./3_0_1";
  inputs."swayipc-3_1_0".url = "path:./3_1_0";
  inputs."swayipc-3_1_1".url = "path:./3_1_1";
  inputs."swayipc-3_1_2".url = "path:./3_1_2";
  inputs."swayipc-3_1_3".url = "path:./3_1_3";
  inputs."swayipc-3_1_4".url = "path:./3_1_4";
  inputs."swayipc-3_1_5".url = "path:./3_1_5";
  inputs."swayipc-3_1_6".url = "path:./3_1_6";
  inputs."swayipc-3_1_7".url = "path:./3_1_7";
  inputs."swayipc-3_1_8".url = "path:./3_1_8";
  outputs = { self, nixpkgs, ...}@inputs:
    let lib = import ./lib.nix;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}