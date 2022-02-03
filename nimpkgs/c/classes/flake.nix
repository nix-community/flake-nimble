{
  description = ''Adds class support to Nim.'';
  inputs."classes-master".url = "path:./master";
  inputs."classes-v0_2_0".url = "path:./v0_2_0";
  inputs."classes-v0_2_1".url = "path:./v0_2_1";
  inputs."classes-v0_2_11".url = "path:./v0_2_11";
  inputs."classes-v0_2_2".url = "path:./v0_2_2";
  inputs."classes-v0_2_3".url = "path:./v0_2_3";
  inputs."classes-v0_2_5".url = "path:./v0_2_5";
  inputs."classes-v0_2_8".url = "path:./v0_2_8";
  inputs."classes-v0_2_9".url = "path:./v0_2_9";
  outputs = { self, nixpkgs, ...}@inputs:
    let lib = import ./lib.nix;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}