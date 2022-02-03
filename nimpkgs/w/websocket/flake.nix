{
  description = ''websockets for nim'';
  inputs."websocket-master".url = "path:./master";
  inputs."websocket-0_1_0".url = "path:./0_1_0";
  inputs."websocket-0_1_1".url = "path:./0_1_1";
  inputs."websocket-0_2_0".url = "path:./0_2_0";
  inputs."websocket-0_2_1".url = "path:./0_2_1";
  inputs."websocket-0_3_0".url = "path:./0_3_0";
  inputs."websocket-0_3_1".url = "path:./0_3_1";
  inputs."websocket-0_3_2".url = "path:./0_3_2";
  inputs."websocket-0_3_3".url = "path:./0_3_3";
  inputs."websocket-0_3_4".url = "path:./0_3_4";
  inputs."websocket-0_3_5".url = "path:./0_3_5";
  inputs."websocket-0_3_6".url = "path:./0_3_6";
  inputs."websocket-0_4_0".url = "path:./0_4_0";
  inputs."websocket-0_4_1".url = "path:./0_4_1";
  inputs."websocket-0_4_2".url = "path:./0_4_2";
  inputs."websocket-0_5_0".url = "path:./0_5_0";
  outputs = { self, nixpkgs, ...}@inputs:
    let lib = import ./lib.nix;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}