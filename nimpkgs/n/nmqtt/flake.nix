{
  description = ''Native MQTT client library'';
  inputs."nmqtt-master".url = "path:./master";
  inputs."nmqtt-0_1_0".url = "path:./0_1_0";
  inputs."nmqtt-v1_0_0".url = "path:./v1_0_0";
  inputs."nmqtt-v1_0_2".url = "path:./v1_0_2";
  inputs."nmqtt-v1_0_3".url = "path:./v1_0_3";
  inputs."nmqtt-v1_0_4".url = "path:./v1_0_4";
  outputs = { self, nixpkgs, ...}@inputs:
    let lib = import ./lib.nix;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}