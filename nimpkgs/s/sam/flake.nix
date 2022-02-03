{
  description = ''Fast and just works JSON-Binding for Nim'';
  inputs."sam-master".url = "path:./master";
  inputs."sam-0_1_11".url = "path:./0_1_11";
  inputs."sam-0_1_12".url = "path:./0_1_12";
  inputs."sam-0_1_13".url = "path:./0_1_13";
  inputs."sam-0_1_14".url = "path:./0_1_14";
  inputs."sam-0_1_15".url = "path:./0_1_15";
  inputs."sam-0_1_16".url = "path:./0_1_16";
  inputs."sam-0_1_17".url = "path:./0_1_17";
  inputs."sam-0_1_2_1".url = "path:./0_1_2_1";
  inputs."sam-0_1_3".url = "path:./0_1_3";
  inputs."sam-0_1_4".url = "path:./0_1_4";
  inputs."sam-0_1_5".url = "path:./0_1_5";
  inputs."sam-0_1_6".url = "path:./0_1_6";
  inputs."sam-0_1_7".url = "path:./0_1_7";
  inputs."sam-0_1_8".url = "path:./0_1_8";
  inputs."sam-0_1_9".url = "path:./0_1_9";
  outputs = { self, nixpkgs, ...}@inputs:
    let lib = import ./lib.nix;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}