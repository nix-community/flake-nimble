{
  description = ''Linear algebra for Nim'';
  inputs."neo-master".url = "path:./master";
  inputs."neo-0_1_1".url = "path:./0_1_1";
  inputs."neo-0_1_2".url = "path:./0_1_2";
  inputs."neo-0_1_3".url = "path:./0_1_3";
  inputs."neo-0_1_4".url = "path:./0_1_4";
  inputs."neo-0_1_5".url = "path:./0_1_5";
  inputs."neo-0_1_6".url = "path:./0_1_6";
  inputs."neo-0_1_7".url = "path:./0_1_7";
  inputs."neo-0_2_0".url = "path:./0_2_0";
  inputs."neo-0_2_2".url = "path:./0_2_2";
  inputs."neo-0_2_3".url = "path:./0_2_3";
  inputs."neo-0_2_4".url = "path:./0_2_4";
  inputs."neo-0_2_5".url = "path:./0_2_5";
  inputs."neo-0_3_0".url = "path:./0_3_0";
  inputs."neo-0_3_1".url = "path:./0_3_1";
  outputs = { self, nixpkgs, ...}@inputs:
    let lib = import ./lib.nix;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}