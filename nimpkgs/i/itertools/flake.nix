{
  description = ''Itertools for Nim'';
  inputs."itertools-master".url = "path:./master";
  inputs."itertools-v0_1".url = "path:./v0_1";
  inputs."itertools-v0_1_1".url = "path:./v0_1_1";
  inputs."itertools-v0_2_0".url = "path:./v0_2_0";
  inputs."itertools-v0_2_1".url = "path:./v0_2_1";
  inputs."itertools-v0_2_2".url = "path:./v0_2_2";
  inputs."itertools-v0_3_0".url = "path:./v0_3_0";
  inputs."itertools-v0_3_1".url = "path:./v0_3_1";
  inputs."itertools-v0_4_0".url = "path:./v0_4_0";
  outputs = { self, nixpkgs, ...}@inputs:
    let lib = import ./lib.nix;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}