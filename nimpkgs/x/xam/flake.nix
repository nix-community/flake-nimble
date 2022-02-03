{
  description = ''xam'';
  inputs."xam-main".url = "path:./main";
  inputs."xam-0_1_0".url = "path:./0_1_0";
  inputs."xam-0_2_0".url = "path:./0_2_0";
  inputs."xam-0_3_0".url = "path:./0_3_0";
  inputs."xam-0_4_0".url = "path:./0_4_0";
  inputs."xam-0_5_0".url = "path:./0_5_0";
  inputs."xam-0_6_0".url = "path:./0_6_0";
  inputs."xam-0_7_0".url = "path:./0_7_0";
  inputs."xam-0_8_0".url = "path:./0_8_0";
  inputs."xam-0_9_0".url = "path:./0_9_0";
  inputs."xam-1_0_0".url = "path:./1_0_0";
  inputs."xam-1_1_0".url = "path:./1_1_0";
  inputs."xam-1_3_0".url = "path:./1_3_0";
  inputs."xam-1_4_0".url = "path:./1_4_0";
  inputs."xam-1_5_0".url = "path:./1_5_0";
  inputs."xam-1_6_0".url = "path:./1_6_0";
  inputs."xam-1_7_0".url = "path:./1_7_0";
  outputs = { self, nixpkgs, ...}@inputs:
    let lib = import ./lib.nix;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}