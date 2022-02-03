{
  description = ''A simple 2D game engine for Nim language. Deprecated, use nimgame2 instead.'';
  inputs."nimgame-master".url = "path:./master";
  inputs."nimgame-v0_1".url = "path:./v0_1";
  inputs."nimgame-v0_2".url = "path:./v0_2";
  inputs."nimgame-v0_3".url = "path:./v0_3";
  outputs = { self, nixpkgs, ...}@inputs:
    let lib = import ./lib.nix;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}