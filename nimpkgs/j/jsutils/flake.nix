{
  description = ''Utils to work with javascript'';
  inputs."jsutils-master".url = "path:./master";
  inputs."jsutils-0_1_1".url = "path:./0_1_1";
  inputs."jsutils-0_1_2".url = "path:./0_1_2";
  inputs."jsutils-0_2_0".url = "path:./0_2_0";
  inputs."jsutils-0_2_1".url = "path:./0_2_1";
  inputs."jsutils-0_2_2".url = "path:./0_2_2";
  inputs."jsutils-0_2_3".url = "path:./0_2_3";
  inputs."jsutils-0_2_4".url = "path:./0_2_4";
  inputs."jsutils-0_2_5".url = "path:./0_2_5";
  inputs."jsutils-0_2_6".url = "path:./0_2_6";
  inputs."jsutils-0_2_7".url = "path:./0_2_7";
  inputs."jsutils-v0_1_0".url = "path:./v0_1_0";
  inputs."jsutils-v0_2_3".url = "path:./v0_2_3";
  outputs = { self, nixpkgs, ...}@inputs:
    let lib = import ./lib.nix;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}