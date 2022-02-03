{
  description = ''A web DSL for Nim'';
  inputs."rosencrantz-master".url = "path:./master";
  inputs."rosencrantz-0_1_0".url = "path:./0_1_0";
  inputs."rosencrantz-0_1_1".url = "path:./0_1_1";
  inputs."rosencrantz-0_1_10".url = "path:./0_1_10";
  inputs."rosencrantz-0_1_11".url = "path:./0_1_11";
  inputs."rosencrantz-0_1_12".url = "path:./0_1_12";
  inputs."rosencrantz-0_1_2".url = "path:./0_1_2";
  inputs."rosencrantz-0_1_3".url = "path:./0_1_3";
  inputs."rosencrantz-0_1_4".url = "path:./0_1_4";
  inputs."rosencrantz-0_1_5".url = "path:./0_1_5";
  inputs."rosencrantz-0_1_6".url = "path:./0_1_6";
  inputs."rosencrantz-0_1_7".url = "path:./0_1_7";
  inputs."rosencrantz-0_1_8".url = "path:./0_1_8";
  inputs."rosencrantz-0_1_9".url = "path:./0_1_9";
  inputs."rosencrantz-0_2_0".url = "path:./0_2_0";
  inputs."rosencrantz-0_2_1".url = "path:./0_2_1";
  inputs."rosencrantz-0_2_2".url = "path:./0_2_2";
  inputs."rosencrantz-0_2_3".url = "path:./0_2_3";
  inputs."rosencrantz-0_2_4".url = "path:./0_2_4";
  inputs."rosencrantz-0_2_5".url = "path:./0_2_5";
  inputs."rosencrantz-0_2_6".url = "path:./0_2_6";
  inputs."rosencrantz-0_2_7".url = "path:./0_2_7";
  inputs."rosencrantz-0_2_8".url = "path:./0_2_8";
  inputs."rosencrantz-0_3_0".url = "path:./0_3_0";
  inputs."rosencrantz-0_3_1".url = "path:./0_3_1";
  inputs."rosencrantz-0_3_2".url = "path:./0_3_2";
  inputs."rosencrantz-0_3_3".url = "path:./0_3_3";
  inputs."rosencrantz-0_3_4".url = "path:./0_3_4";
  inputs."rosencrantz-0_3_5".url = "path:./0_3_5";
  inputs."rosencrantz-0_3_6".url = "path:./0_3_6";
  inputs."rosencrantz-0_3_7".url = "path:./0_3_7";
  inputs."rosencrantz-0_3_8".url = "path:./0_3_8";
  inputs."rosencrantz-0_3_9".url = "path:./0_3_9";
  inputs."rosencrantz-0_4_0".url = "path:./0_4_0";
  inputs."rosencrantz-0_4_1".url = "path:./0_4_1";
  inputs."rosencrantz-0_4_2".url = "path:./0_4_2";
  inputs."rosencrantz-0_4_3".url = "path:./0_4_3";
  outputs = { self, nixpkgs, ...}@inputs:
    let lib = import ./lib.nix;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}