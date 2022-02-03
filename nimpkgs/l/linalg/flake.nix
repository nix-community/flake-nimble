{
  description = ''Linear algebra for Nim'';
  inputs."linalg-master".url = "path:./master";
  inputs."linalg-0_1_0".url = "path:./0_1_0";
  inputs."linalg-0_1_1".url = "path:./0_1_1";
  inputs."linalg-0_1_2".url = "path:./0_1_2";
  inputs."linalg-0_1_3".url = "path:./0_1_3";
  inputs."linalg-0_1_4".url = "path:./0_1_4";
  inputs."linalg-0_1_5".url = "path:./0_1_5";
  inputs."linalg-0_2_0".url = "path:./0_2_0";
  inputs."linalg-0_2_1".url = "path:./0_2_1";
  inputs."linalg-0_2_2".url = "path:./0_2_2";
  inputs."linalg-0_3_0".url = "path:./0_3_0";
  inputs."linalg-0_4_0".url = "path:./0_4_0";
  inputs."linalg-0_4_1".url = "path:./0_4_1";
  inputs."linalg-0_4_2".url = "path:./0_4_2";
  inputs."linalg-0_4_3".url = "path:./0_4_3";
  inputs."linalg-0_4_4".url = "path:./0_4_4";
  inputs."linalg-0_5_0".url = "path:./0_5_0";
  inputs."linalg-0_5_1".url = "path:./0_5_1";
  inputs."linalg-0_5_2".url = "path:./0_5_2";
  inputs."linalg-0_5_3".url = "path:./0_5_3";
  inputs."linalg-0_6_0".url = "path:./0_6_0";
  inputs."linalg-0_6_1".url = "path:./0_6_1";
  inputs."linalg-0_6_2".url = "path:./0_6_2";
  inputs."linalg-0_6_3".url = "path:./0_6_3";
  inputs."linalg-0_6_4".url = "path:./0_6_4";
  inputs."linalg-0_6_5".url = "path:./0_6_5";
  inputs."linalg-0_6_6".url = "path:./0_6_6";
  inputs."linalg-raw-pointers".url = "path:./raw-pointers";
  outputs = { self, nixpkgs, ...}@inputs:
    let lib = import ./lib.nix;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}