{
  description = ''A library for colorizing paths according to LS_COLORS'';
  inputs."lscolors-master".url = "path:./master";
  inputs."lscolors-v0_1_0".url = "path:./v0_1_0";
  inputs."lscolors-v0_2_0".url = "path:./v0_2_0";
  inputs."lscolors-v0_2_1".url = "path:./v0_2_1";
  inputs."lscolors-v0_2_2".url = "path:./v0_2_2";
  inputs."lscolors-v0_3_0".url = "path:./v0_3_0";
  inputs."lscolors-v0_3_1".url = "path:./v0_3_1";
  inputs."lscolors-v0_3_2".url = "path:./v0_3_2";
  inputs."lscolors-v0_3_3".url = "path:./v0_3_3";
  outputs = { self, nixpkgs, ...}@inputs:
    let lib = import ./lib.nix;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}