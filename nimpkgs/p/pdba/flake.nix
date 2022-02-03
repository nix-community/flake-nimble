{
  description = ''A postgres DB adapter for nim.'';
  inputs."pdba-master".url = "path:./master";
  inputs."pdba-v0_2_0".url = "path:./v0_2_0";
  inputs."pdba-v0_2_1".url = "path:./v0_2_1";
  inputs."pdba-v0_2_2".url = "path:./v0_2_2";
  inputs."pdba-v0_2_3".url = "path:./v0_2_3";
  inputs."pdba-v0_2_4".url = "path:./v0_2_4";
  outputs = { self, nixpkgs, ...}@inputs:
    let lib = import ./lib.nix;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}