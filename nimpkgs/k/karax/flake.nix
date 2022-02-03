{
  description = ''Karax is a framework for developing single page applications in Nim.'';
  inputs."karax-master".url = "path:./master";
  inputs."karax-0_1_0".url = "path:./0_1_0";
  inputs."karax-0_2_0".url = "path:./0_2_0";
  inputs."karax-1_0_0".url = "path:./1_0_0";
  inputs."karax-1_1_0".url = "path:./1_1_0";
  inputs."karax-1_1_1".url = "path:./1_1_1";
  inputs."karax-1_1_2".url = "path:./1_1_2";
  inputs."karax-1_1_3".url = "path:./1_1_3";
  inputs."karax-1_2_1".url = "path:./1_2_1";
  outputs = { self, nixpkgs, ...}@inputs:
    let lib = import ./lib.nix;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}