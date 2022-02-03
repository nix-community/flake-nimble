{
  description = ''Nim functional programming library'';
  inputs."nimfp-master".url = "path:./master";
  inputs."nimfp-v0_0_1".url = "path:./v0_0_1";
  inputs."nimfp-v0_0_2".url = "path:./v0_0_2";
  inputs."nimfp-v0_0_3".url = "path:./v0_0_3";
  inputs."nimfp-v0_0_4".url = "path:./v0_0_4";
  inputs."nimfp-v0_0_5".url = "path:./v0_0_5";
  inputs."nimfp-v0_0_6".url = "path:./v0_0_6";
  inputs."nimfp-v0_0_7".url = "path:./v0_0_7";
  inputs."nimfp-v0_0_8".url = "path:./v0_0_8";
  inputs."nimfp-v0_0_9".url = "path:./v0_0_9";
  inputs."nimfp-v0_1_0".url = "path:./v0_1_0";
  inputs."nimfp-v0_2_0".url = "path:./v0_2_0";
  inputs."nimfp-v0_2_1".url = "path:./v0_2_1";
  inputs."nimfp-v0_2_2".url = "path:./v0_2_2";
  inputs."nimfp-v0_2_3".url = "path:./v0_2_3";
  inputs."nimfp-v0_2_4".url = "path:./v0_2_4";
  inputs."nimfp-v0_3_0".url = "path:./v0_3_0";
  inputs."nimfp-v0_3_1".url = "path:./v0_3_1";
  inputs."nimfp-v0_3_2".url = "path:./v0_3_2";
  inputs."nimfp-v0_3_3".url = "path:./v0_3_3";
  inputs."nimfp-v0_3_4".url = "path:./v0_3_4";
  inputs."nimfp-v0_3_5".url = "path:./v0_3_5";
  inputs."nimfp-v0_3_6".url = "path:./v0_3_6";
  inputs."nimfp-v0_3_7".url = "path:./v0_3_7";
  inputs."nimfp-v0_4_0".url = "path:./v0_4_0";
  inputs."nimfp-v0_4_1".url = "path:./v0_4_1";
  inputs."nimfp-v0_4_2".url = "path:./v0_4_2";
  inputs."nimfp-v0_4_3".url = "path:./v0_4_3";
  inputs."nimfp-v0_4_4".url = "path:./v0_4_4";
  outputs = { self, nixpkgs, ...}@inputs:
    let lib = import ./lib.nix;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}