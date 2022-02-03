{
  description = ''Everything you want to do with colors.'';
  inputs."chroma-master".url = "path:./master";
  inputs."chroma-0_0_1".url = "path:./0_0_1";
  inputs."chroma-0_1_0".url = "path:./0_1_0";
  inputs."chroma-0_1_1".url = "path:./0_1_1";
  inputs."chroma-0_1_2".url = "path:./0_1_2";
  inputs."chroma-0_1_3".url = "path:./0_1_3";
  inputs."chroma-0_1_4".url = "path:./0_1_4";
  inputs."chroma-0_1_5".url = "path:./0_1_5";
  inputs."chroma-0_2_1".url = "path:./0_2_1";
  inputs."chroma-0_2_2".url = "path:./0_2_2";
  inputs."chroma-0_2_3".url = "path:./0_2_3";
  inputs."chroma-0_2_4".url = "path:./0_2_4";
  inputs."chroma-0_2_5".url = "path:./0_2_5";
  inputs."chroma-v0_1_0".url = "path:./v0_1_0";
  outputs = { self, nixpkgs, ...}@inputs:
    let lib = import ./lib.nix;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}