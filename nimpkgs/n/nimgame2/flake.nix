{
  description = ''A simple 2D game engine for Nim language.'';
  inputs."nimgame2-master".url = "path:./master";
  inputs."nimgame2-v0_1".url = "path:./v0_1";
  inputs."nimgame2-v0_2".url = "path:./v0_2";
  inputs."nimgame2-v0_3".url = "path:./v0_3";
  inputs."nimgame2-v0_4".url = "path:./v0_4";
  inputs."nimgame2-v0_5".url = "path:./v0_5";
  inputs."nimgame2-v0_6".url = "path:./v0_6";
  inputs."nimgame2-v0_6_1".url = "path:./v0_6_1";
  inputs."nimgame2-v0_6_2".url = "path:./v0_6_2";
  outputs = { self, nixpkgs, ...}@inputs:
    let lib = import ./lib.nix;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}