{
  description = ''Interactive Nim Shell'';
  inputs."inim-master".url = "path:./master";
  inputs."inim-0_1_1".url = "path:./0_1_1";
  inputs."inim-0_2_0".url = "path:./0_2_0";
  inputs."inim-0_2_1".url = "path:./0_2_1";
  inputs."inim-0_2_2".url = "path:./0_2_2";
  inputs."inim-0_2_3".url = "path:./0_2_3";
  inputs."inim-0_2_4".url = "path:./0_2_4";
  inputs."inim-0_2_5".url = "path:./0_2_5";
  inputs."inim-0_3_0".url = "path:./0_3_0";
  inputs."inim-0_3_1".url = "path:./0_3_1";
  inputs."inim-0_4_0".url = "path:./0_4_0";
  inputs."inim-0_4_1".url = "path:./0_4_1";
  inputs."inim-0_4_2".url = "path:./0_4_2";
  inputs."inim-v0_4_2".url = "path:./v0_4_2";
  inputs."inim-v0_4_3".url = "path:./v0_4_3";
  inputs."inim-v0_4_4".url = "path:./v0_4_4";
  inputs."inim-v0_4_5".url = "path:./v0_4_5";
  inputs."inim-v0_4_6".url = "path:./v0_4_6";
  inputs."inim-v0_4_7".url = "path:./v0_4_7";
  inputs."inim-v0_5_0".url = "path:./v0_5_0";
  inputs."inim-v0_6_0".url = "path:./v0_6_0";
  inputs."inim-v0_6_1".url = "path:./v0_6_1";
  outputs = { self, nixpkgs, ...}@inputs:
    let lib = import ./lib.nix;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}