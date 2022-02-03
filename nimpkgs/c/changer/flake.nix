{
  description = ''A tool for managing a project's changelog'';
  inputs."changer-master".url = "path:./master";
  inputs."changer-v0_1_1".url = "path:./v0_1_1";
  inputs."changer-v0_2_0".url = "path:./v0_2_0";
  inputs."changer-v0_3_0".url = "path:./v0_3_0";
  inputs."changer-v0_4_0".url = "path:./v0_4_0";
  inputs."changer-v0_4_1".url = "path:./v0_4_1";
  inputs."changer-v0_4_2".url = "path:./v0_4_2";
  inputs."changer-v0_5_0".url = "path:./v0_5_0";
  inputs."changer-v0_6_0".url = "path:./v0_6_0";
  inputs."changer-v0_6_1".url = "path:./v0_6_1";
  inputs."changer-v0_6_2".url = "path:./v0_6_2";
  inputs."changer-v0_7_0".url = "path:./v0_7_0";
  outputs = { self, nixpkgs, ...}@inputs:
    let lib = import ./lib.nix;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}