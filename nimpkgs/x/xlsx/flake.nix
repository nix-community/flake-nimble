{
  description = ''Read and parse Excel files'';
  inputs."xlsx-master".url = "path:./master";
  inputs."xlsx-0_4_5".url = "path:./0_4_5";
  inputs."xlsx-v0_1_0".url = "path:./v0_1_0";
  inputs."xlsx-v0_1_2".url = "path:./v0_1_2";
  inputs."xlsx-v0_1_6".url = "path:./v0_1_6";
  inputs."xlsx-v0_1_8".url = "path:./v0_1_8";
  inputs."xlsx-v0_2_0".url = "path:./v0_2_0";
  inputs."xlsx-v0_3_0".url = "path:./v0_3_0";
  inputs."xlsx-v0_3_2".url = "path:./v0_3_2";
  inputs."xlsx-v0_3_6".url = "path:./v0_3_6";
  inputs."xlsx-v0_3_8".url = "path:./v0_3_8";
  inputs."xlsx-v0_4_0".url = "path:./v0_4_0";
  inputs."xlsx-v0_4_2".url = "path:./v0_4_2";
  inputs."xlsx-v0_4_4".url = "path:./v0_4_4";
  outputs = { self, nixpkgs, ...}@inputs:
    let lib = import ./lib.nix;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}