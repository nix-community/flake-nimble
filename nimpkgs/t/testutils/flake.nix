{
  description = ''A comprehensive toolkit for all your testing needs'';
  inputs."testutils-master".url = "path:./master";
  inputs."testutils-0_0_2".url = "path:./0_0_2";
  inputs."testutils-0_1_0".url = "path:./0_1_0";
  inputs."testutils-0_1_1".url = "path:./0_1_1";
  inputs."testutils-0_2_0".url = "path:./0_2_0";
  inputs."testutils-0_3_0".url = "path:./0_3_0";
  inputs."testutils-0_4_0".url = "path:./0_4_0";
  inputs."testutils-0_4_1".url = "path:./0_4_1";
  inputs."testutils-v0_4_2".url = "path:./v0_4_2";
  outputs = { self, nixpkgs, ...}@inputs:
    let lib = import ./lib.nix;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}