{
  description = ''The Nim asynchronous web framework.'';
  inputs."akane-master".url = "path:./master";
  inputs."akane-0_2_0".url = "path:./0_2_0";
  inputs."akane-v0_1_0".url = "path:./v0_1_0";
  inputs."akane-v0_1_1".url = "path:./v0_1_1";
  inputs."akane-v0_1_1b".url = "path:./v0_1_1b";
  inputs."akane-v0_1_2".url = "path:./v0_1_2";
  inputs."akane-v0_1_3".url = "path:./v0_1_3";
  inputs."akane-v0_1_5".url = "path:./v0_1_5";
  inputs."akane-v0_1_6".url = "path:./v0_1_6";
  inputs."akane-v0_1_7".url = "path:./v0_1_7";
  outputs = { self, nixpkgs, ...}@inputs:
    let lib = import ./lib.nix;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}