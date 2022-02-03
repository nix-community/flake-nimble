{
  description = ''omni is a DSL for low-level audio programming.'';
  inputs."omni-develop".url = "path:./develop";
  inputs."omni-master".url = "path:./master";
  inputs."omni-0_1_0".url = "path:./0_1_0";
  inputs."omni-0_2_0".url = "path:./0_2_0";
  inputs."omni-0_2_1".url = "path:./0_2_1";
  inputs."omni-0_2_2".url = "path:./0_2_2";
  inputs."omni-0_2_3".url = "path:./0_2_3";
  inputs."omni-0_4_0".url = "path:./0_4_0";
  outputs = { self, nixpkgs, ...}@inputs:
    let lib = import ./lib.nix;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}