{
  description = ''2D GPU rendering with a tiling atlas.'';
  inputs."boxy-master".url = "path:./master";
  inputs."boxy-0_1_0".url = "path:./0_1_0";
  inputs."boxy-0_1_1".url = "path:./0_1_1";
  inputs."boxy-0_2_0".url = "path:./0_2_0";
  inputs."boxy-0_3_0".url = "path:./0_3_0";
  inputs."boxy-0_3_1".url = "path:./0_3_1";
  inputs."boxy-0_3_2".url = "path:./0_3_2";
  inputs."boxy-0_3_3".url = "path:./0_3_3";
  inputs."boxy-0_3_4".url = "path:./0_3_4";
  outputs = { self, nixpkgs, ...}@inputs:
    let lib = import ./lib.nix;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}