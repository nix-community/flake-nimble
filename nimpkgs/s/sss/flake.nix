{
  description = ''Shamir secret sharing'';
  inputs."sss-master".url = "path:./master";
  inputs."sss-0_3_0".url = "path:./0_3_0";
  inputs."sss-0_3_1".url = "path:./0_3_1";
  inputs."sss-0_3_2".url = "path:./0_3_2";
  inputs."sss-v0_1_0".url = "path:./v0_1_0";
  inputs."sss-v0_1_1".url = "path:./v0_1_1";
  inputs."sss-v0_2_0".url = "path:./v0_2_0";
  inputs."sss-v0_2_1".url = "path:./v0_2_1";
  inputs."sss-v0_2_2".url = "path:./v0_2_2";
  outputs = { self, nixpkgs, ...}@inputs:
    let lib = import ./lib.nix;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}