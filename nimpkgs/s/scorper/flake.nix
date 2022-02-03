{
  description = ''micro and elegant web framework'';
  
  inputs."scorper-v1_0_0".url = "path:./v1_0_0";
  inputs."scorper-v1_0_1".url = "path:./v1_0_1";
  inputs."scorper-v1_0_10".url = "path:./v1_0_10";
  inputs."scorper-v1_0_11".url = "path:./v1_0_11";
  inputs."scorper-v1_0_12".url = "path:./v1_0_12";
  inputs."scorper-v1_0_13".url = "path:./v1_0_13";
  inputs."scorper-v1_0_15".url = "path:./v1_0_15";
  inputs."scorper-v1_0_16".url = "path:./v1_0_16";
  inputs."scorper-v1_0_17".url = "path:./v1_0_17";
  inputs."scorper-v1_0_18".url = "path:./v1_0_18";
  inputs."scorper-v1_0_2".url = "path:./v1_0_2";
  inputs."scorper-v1_0_20".url = "path:./v1_0_20";
  inputs."scorper-v1_0_21".url = "path:./v1_0_21";
  inputs."scorper-v1_0_22".url = "path:./v1_0_22";
  inputs."scorper-v1_0_23".url = "path:./v1_0_23";
  inputs."scorper-v1_0_24".url = "path:./v1_0_24";
  inputs."scorper-v1_0_25".url = "path:./v1_0_25";
  inputs."scorper-v1_0_3".url = "path:./v1_0_3";
  inputs."scorper-v1_0_4".url = "path:./v1_0_4";
  inputs."scorper-v1_0_5".url = "path:./v1_0_5";
  inputs."scorper-v1_0_6".url = "path:./v1_0_6";
  inputs."scorper-v1_0_7".url = "path:./v1_0_7";
  inputs."scorper-v1_0_8".url = "path:./v1_0_8";
  inputs."scorper-v1_0_9".url = "path:./v1_0_9";
  outputs = { self, nixpkgs, ...}@inputs:
    let lib = import ./lib.nix;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}