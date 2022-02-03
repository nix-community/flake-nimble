{
  description = ''Statistic-driven microbenchmark framework'';
  inputs."criterion-master".url = "path:./master";
  inputs."criterion-0_1_0".url = "path:./0_1_0";
  inputs."criterion-0_1_1".url = "path:./0_1_1";
  inputs."criterion-0_1_2".url = "path:./0_1_2";
  inputs."criterion-0_1_3".url = "path:./0_1_3";
  inputs."criterion-0_2_0".url = "path:./0_2_0";
  inputs."criterion-0_2_1".url = "path:./0_2_1";
  inputs."criterion-0_2_2".url = "path:./0_2_2";
  inputs."criterion-0_2_3".url = "path:./0_2_3";
  inputs."criterion-0_2_4".url = "path:./0_2_4";
  inputs."criterion-0_2_5".url = "path:./0_2_5";
  inputs."criterion-0_2_6".url = "path:./0_2_6";
  inputs."criterion-0_2_7".url = "path:./0_2_7";
  inputs."criterion-0_2_8".url = "path:./0_2_8";
  outputs = { self, nixpkgs, ...}@inputs:
    let lib = import ./lib.nix;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}