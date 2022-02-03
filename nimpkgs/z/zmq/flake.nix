{
  description = ''ZeroMQ 4 wrapper'';
  inputs."zmq-master".url = "path:./master";
  inputs."zmq-v0_2_2".url = "path:./v0_2_2";
  inputs."zmq-v0_3_1".url = "path:./v0_3_1";
  inputs."zmq-v0_3_4".url = "path:./v0_3_4";
  inputs."zmq-v1_0_1".url = "path:./v1_0_1";
  inputs."zmq-v1_2_0".url = "path:./v1_2_0";
  inputs."zmq-v1_2_1".url = "path:./v1_2_1";
  outputs = { self, nixpkgs, ...}@inputs:
    let lib = import ./lib.nix;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}