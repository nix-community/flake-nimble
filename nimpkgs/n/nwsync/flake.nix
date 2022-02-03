{
  description = ''NWSync Repository Management utilities'';
  inputs."nwsync-master".url = "path:./master";
  inputs."nwsync-0_1_0".url = "path:./0_1_0";
  inputs."nwsync-0_1_1".url = "path:./0_1_1";
  inputs."nwsync-0_1_2".url = "path:./0_1_2";
  inputs."nwsync-0_1_3".url = "path:./0_1_3";
  inputs."nwsync-0_2_0".url = "path:./0_2_0";
  inputs."nwsync-0_2_1".url = "path:./0_2_1";
  inputs."nwsync-0_2_2".url = "path:./0_2_2";
  inputs."nwsync-0_2_3".url = "path:./0_2_3";
  inputs."nwsync-0_2_4".url = "path:./0_2_4";
  inputs."nwsync-0_2_5".url = "path:./0_2_5";
  inputs."nwsync-0_2_6".url = "path:./0_2_6";
  inputs."nwsync-0_3_0".url = "path:./0_3_0";
  inputs."nwsync-0_3_1".url = "path:./0_3_1";
  inputs."nwsync-0_3_2".url = "path:./0_3_2";
  inputs."nwsync-0_4_0".url = "path:./0_4_0";
  inputs."nwsync-0_4_1".url = "path:./0_4_1";
  inputs."nwsync-0_4_2".url = "path:./0_4_2";
  inputs."nwsync-0_4_3".url = "path:./0_4_3";
  outputs = { self, nixpkgs, ...}@inputs:
    let lib = import ./lib.nix;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}