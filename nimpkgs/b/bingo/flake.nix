{
  description = ''Binary serialization framework'';
  inputs."bingo-master".url = "path:./master";
  inputs."bingo-v0_0_1".url = "path:./v0_0_1";
  inputs."bingo-v0_1_0".url = "path:./v0_1_0";
  inputs."bingo-v0_2_0".url = "path:./v0_2_0";
  inputs."bingo-v0_2_1".url = "path:./v0_2_1";
  inputs."bingo-v0_3_0".url = "path:./v0_3_0";
  inputs."bingo-v0_4_0".url = "path:./v0_4_0";
  inputs."bingo-v0_4_1".url = "path:./v0_4_1";
  outputs = { self, nixpkgs, ...}@inputs:
    let lib = import ./lib.nix;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}