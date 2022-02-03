{
  description = ''Migration manager for Norm.'';
  inputs."norman-develop".url = "path:./develop";
  inputs."norman-master".url = "path:./master";
  inputs."norman-1_0_0".url = "path:./1_0_0";
  inputs."norman-1_0_1".url = "path:./1_0_1";
  inputs."norman-1_0_2".url = "path:./1_0_2";
  inputs."norman-2_0_0".url = "path:./2_0_0";
  inputs."norman-2_1_0".url = "path:./2_1_0";
  inputs."norman-2_1_1".url = "path:./2_1_1";
  inputs."norman-2_1_2".url = "path:./2_1_2";
  inputs."norman-2_1_3".url = "path:./2_1_3";
  inputs."norman-2_1_4".url = "path:./2_1_4";
  inputs."norman-2_1_5".url = "path:./2_1_5";
  inputs."norman-2_1_7".url = "path:./2_1_7";
  outputs = { self, nixpkgs, ...}@inputs:
    let lib = import ./lib.nix;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}