{
  description = ''High-level Wren wrapper'';
  inputs."euwren-master".url = "path:./master";
  inputs."euwren-0_1_0".url = "path:./0_1_0";
  inputs."euwren-0_10_0".url = "path:./0_10_0";
  inputs."euwren-0_10_1".url = "path:./0_10_1";
  inputs."euwren-0_11_0".url = "path:./0_11_0";
  inputs."euwren-0_12_0".url = "path:./0_12_0";
  inputs."euwren-0_12_1".url = "path:./0_12_1";
  inputs."euwren-0_12_2".url = "path:./0_12_2";
  inputs."euwren-0_13_0".url = "path:./0_13_0";
  inputs."euwren-0_13_1".url = "path:./0_13_1";
  inputs."euwren-0_13_2".url = "path:./0_13_2";
  inputs."euwren-0_13_3".url = "path:./0_13_3";
  inputs."euwren-0_2_0".url = "path:./0_2_0";
  inputs."euwren-0_3_0".url = "path:./0_3_0";
  inputs."euwren-0_4_0".url = "path:./0_4_0";
  inputs."euwren-0_5_0".url = "path:./0_5_0";
  inputs."euwren-0_5_1".url = "path:./0_5_1";
  inputs."euwren-0_6_0".url = "path:./0_6_0";
  inputs."euwren-0_7_0".url = "path:./0_7_0";
  inputs."euwren-0_8_0".url = "path:./0_8_0";
  inputs."euwren-0_9_0".url = "path:./0_9_0";
  inputs."euwren-0_9_1".url = "path:./0_9_1";
  outputs = { self, nixpkgs, ...}@inputs:
    let lib = import ./lib.nix;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}