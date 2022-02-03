{
  description = ''A 3d sound API for nim.'';
  inputs."slappy-master".url = "path:./master";
  inputs."slappy-0_3_0".url = "path:./0_3_0";
  inputs."slappy-0_3_1".url = "path:./0_3_1";
  inputs."slappy-v0_1_0".url = "path:./v0_1_0";
  inputs."slappy-v0_2_0".url = "path:./v0_2_0";
  outputs = { self, nixpkgs, ...}@inputs:
    let lib = import ./lib.nix;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}