{
  description = ''Nim - Java bridge'';
  inputs."jnim-master".url = "path:./master";
  inputs."jnim-v0_1_0".url = "path:./v0_1_0";
  inputs."jnim-v0_1_1".url = "path:./v0_1_1";
  inputs."jnim-v0_2_0".url = "path:./v0_2_0";
  inputs."jnim-v0_2_1".url = "path:./v0_2_1";
  inputs."jnim-v0_2_2".url = "path:./v0_2_2";
  inputs."jnim-v0_2_3".url = "path:./v0_2_3";
  inputs."jnim-v0_2_4".url = "path:./v0_2_4";
  inputs."jnim-v0_2_5".url = "path:./v0_2_5";
  inputs."jnim-v0_2_6".url = "path:./v0_2_6";
  inputs."jnim-v0_3_0".url = "path:./v0_3_0";
  inputs."jnim-v0_3_1".url = "path:./v0_3_1";
  inputs."jnim-v0_3_2".url = "path:./v0_3_2";
  inputs."jnim-v0_3_3".url = "path:./v0_3_3";
  inputs."jnim-v0_3_4".url = "path:./v0_3_4";
  inputs."jnim-v0_3_5".url = "path:./v0_3_5";
  inputs."jnim-v0_3_6".url = "path:./v0_3_6";
  inputs."jnim-v0_4_0".url = "path:./v0_4_0";
  inputs."jnim-v0_4_1".url = "path:./v0_4_1";
  inputs."jnim-v0_4_2".url = "path:./v0_4_2";
  inputs."jnim-v0_5".url = "path:./v0_5";
  inputs."jnim-v0_5_1".url = "path:./v0_5_1";
  outputs = { self, nixpkgs, ...}@inputs:
    let lib = import ./lib.nix;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}