{
  description = ''Simple WebSocket library for nim.'';
  inputs."ws-master".url = "path:./master";
  inputs."ws-0_2_3".url = "path:./0_2_3";
  inputs."ws-0_3_0".url = "path:./0_3_0";
  inputs."ws-0_3_1".url = "path:./0_3_1";
  inputs."ws-0_3_2".url = "path:./0_3_2";
  inputs."ws-0_3_3".url = "path:./0_3_3";
  inputs."ws-0_4_0".url = "path:./0_4_0";
  inputs."ws-0_4_1".url = "path:./0_4_1";
  inputs."ws-0_4_2".url = "path:./0_4_2";
  inputs."ws-0_4_3".url = "path:./0_4_3";
  inputs."ws-0_4_4".url = "path:./0_4_4";
  inputs."ws-0_5_0".url = "path:./0_5_0";
  inputs."ws-v0_4_0".url = "path:./v0_4_0";
  outputs = { self, nixpkgs, ...}@inputs:
    let lib = import ./lib.nix;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}