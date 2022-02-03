{
  description = ''Matrix library'';
  inputs."manu-master".url = "path:./master";
  inputs."manu-1_9_1".url = "path:./1_9_1";
  inputs."manu-v1_0".url = "path:./v1_0";
  inputs."manu-v1_1".url = "path:./v1_1";
  inputs."manu-v1_2".url = "path:./v1_2";
  inputs."manu-v1_3".url = "path:./v1_3";
  inputs."manu-v1_4".url = "path:./v1_4";
  inputs."manu-v1_5".url = "path:./v1_5";
  inputs."manu-v1_9_1".url = "path:./v1_9_1";
  inputs."manu-v2_0".url = "path:./v2_0";
  inputs."manu-v2_0_1".url = "path:./v2_0_1";
  inputs."manu-v2_0_4".url = "path:./v2_0_4";
  inputs."manu-v2_1_0".url = "path:./v2_1_0";
  inputs."manu-v2_1_1".url = "path:./v2_1_1";
  inputs."manu-v2_1_2".url = "path:./v2_1_2";
  inputs."manu-v2_2_0".url = "path:./v2_2_0";
  inputs."manu-v2_2_1".url = "path:./v2_2_1";
  inputs."manu-v2_3".url = "path:./v2_3";
  outputs = { self, nixpkgs, ...}@inputs:
    let lib = import ./lib.nix;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}