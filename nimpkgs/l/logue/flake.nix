{
  description = ''Command line tools for Prologue.'';
  inputs."logue-master".url = "path:./master";
  inputs."logue-v0_1_0".url = "path:./v0_1_0";
  inputs."logue-v0_1_2".url = "path:./v0_1_2";
  inputs."logue-v0_1_6".url = "path:./v0_1_6";
  inputs."logue-v0_1_8".url = "path:./v0_1_8";
  inputs."logue-v0_2_0".url = "path:./v0_2_0";
  inputs."logue-v0_2_2".url = "path:./v0_2_2";
  inputs."logue-v0_2_4".url = "path:./v0_2_4";
  outputs = { self, nixpkgs, ...}@inputs:
    let lib = import ./lib.nix;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}