{
  description = ''Shaders in Nim.'';
  inputs."nimsl-master".url = "path:./master";
  inputs."nimsl-v0_2".url = "path:./v0_2";
  inputs."nimsl-v0_2_1".url = "path:./v0_2_1";
  inputs."nimsl-v0_3".url = "path:./v0_3";
  inputs."nimsl-v0_3_1".url = "path:./v0_3_1";
  inputs."nimsl-v0_3_2".url = "path:./v0_3_2";
  outputs = { self, nixpkgs, ...}@inputs:
    let lib = import ./lib.nix;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}