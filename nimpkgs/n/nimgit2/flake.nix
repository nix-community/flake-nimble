{
  description = ''libgit2 wrapper for Nim'';
  inputs."nimgit2-master".url = "path:./master";
  inputs."nimgit2-v0_1_0".url = "path:./v0_1_0";
  inputs."nimgit2-v0_1_1".url = "path:./v0_1_1";
  inputs."nimgit2-v0_1_2".url = "path:./v0_1_2";
  inputs."nimgit2-v0_2_0".url = "path:./v0_2_0";
  inputs."nimgit2-v0_3_0".url = "path:./v0_3_0";
  inputs."nimgit2-v0_3_1".url = "path:./v0_3_1";
  inputs."nimgit2-v0_3_2".url = "path:./v0_3_2";
  inputs."nimgit2-v0_3_4".url = "path:./v0_3_4";
  outputs = { self, nixpkgs, ...}@inputs:
    let lib = import ./lib.nix;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}