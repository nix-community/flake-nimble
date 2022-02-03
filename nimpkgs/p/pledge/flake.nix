{
  description = ''OpenBSDs pledge(2) for Nim.'';
  inputs."pledge-master".url = "path:./master";
  inputs."pledge-v1_0_0".url = "path:./v1_0_0";
  inputs."pledge-v1_0_1".url = "path:./v1_0_1";
  inputs."pledge-v1_0_2".url = "path:./v1_0_2";
  inputs."pledge-v1_1_0".url = "path:./v1_1_0";
  inputs."pledge-v1_1_1".url = "path:./v1_1_1";
  inputs."pledge-v2_0_0".url = "path:./v2_0_0";
  inputs."pledge-v2_0_1".url = "path:./v2_0_1";
  outputs = { self, nixpkgs, ...}@inputs:
    let lib = import ./lib.nix;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}