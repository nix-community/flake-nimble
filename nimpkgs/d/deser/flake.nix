{
  description = ''De/serialization library for Nim '';
  inputs."deser-master".url = "path:./master";
  inputs."deser-v0_1_0".url = "path:./v0_1_0";
  inputs."deser-v0_1_1".url = "path:./v0_1_1";
  inputs."deser-v0_1_1-alpha_1".url = "path:./v0_1_1-alpha_1";
  inputs."deser-v0_1_1-alpha_2".url = "path:./v0_1_1-alpha_2";
  inputs."deser-v0_1_2".url = "path:./v0_1_2";
  inputs."deser-v0_1_3".url = "path:./v0_1_3";
  inputs."deser-v0_1_4".url = "path:./v0_1_4";
  inputs."deser-v0_1_5".url = "path:./v0_1_5";
  inputs."deser-v0_1_7".url = "path:./v0_1_7";
  outputs = { self, nixpkgs, ...}@inputs:
    let lib = import ./lib.nix;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}