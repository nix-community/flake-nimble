{
  description = ''Serializer and tools for flat binary files.'';
  inputs."flatty-master".url = "path:./master";
  inputs."flatty-0_1_0".url = "path:./0_1_0";
  inputs."flatty-0_1_1".url = "path:./0_1_1";
  inputs."flatty-0_1_2".url = "path:./0_1_2";
  inputs."flatty-0_1_3".url = "path:./0_1_3";
  inputs."flatty-0_1_4".url = "path:./0_1_4";
  inputs."flatty-0_1_5".url = "path:./0_1_5";
  inputs."flatty-0_2_0".url = "path:./0_2_0";
  inputs."flatty-0_2_1".url = "path:./0_2_1";
  inputs."flatty-0_2_2".url = "path:./0_2_2";
  inputs."flatty-0_2_3".url = "path:./0_2_3";
  inputs."flatty-0_2_4".url = "path:./0_2_4";
  outputs = { self, nixpkgs, ...}@inputs:
    let lib = import ./lib.nix;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}