{
  description = ''A simple GUI front for Nimble.'';
  inputs."nimblegui-master".url = "path:./master";
  inputs."nimblegui-v0_1_2".url = "path:./v0_1_2";
  inputs."nimblegui-v0_2_0".url = "path:./v0_2_0";
  inputs."nimblegui-v0_2_1".url = "path:./v0_2_1";
  inputs."nimblegui-v0_2_2".url = "path:./v0_2_2";
  outputs = { self, nixpkgs, ...}@inputs:
    let lib = import ./lib.nix;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}