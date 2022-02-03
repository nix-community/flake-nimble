{
  description = ''A library for making MIDI music'';
  inputs."paramidi-master".url = "path:./master";
  inputs."paramidi-0_1_0".url = "path:./0_1_0";
  inputs."paramidi-0_2_0".url = "path:./0_2_0";
  inputs."paramidi-0_3_0".url = "path:./0_3_0";
  inputs."paramidi-0_4_0".url = "path:./0_4_0";
  inputs."paramidi-0_5_0".url = "path:./0_5_0";
  inputs."paramidi-0_6_0".url = "path:./0_6_0";
  outputs = { self, nixpkgs, ...}@inputs:
    let lib = import ./lib.nix;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}