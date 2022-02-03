{
  description = ''Wrapper of the libtcod library for the Nim language.'';
  inputs."libtcod_nim-master".url = "path:./master";
  inputs."libtcod_nim-v0_9".url = "path:./v0_9";
  inputs."libtcod_nim-v0_95".url = "path:./v0_95";
  inputs."libtcod_nim-v0_96".url = "path:./v0_96";
  inputs."libtcod_nim-v0_97".url = "path:./v0_97";
  inputs."libtcod_nim-v0_98".url = "path:./v0_98";
  inputs."libtcod_nim-v0_98_1".url = "path:./v0_98_1";
  inputs."libtcod_nim-v0_99".url = "path:./v0_99";
  inputs."libtcod_nim-v1_112_0".url = "path:./v1_112_0";
  inputs."libtcod_nim-v1_112_1".url = "path:./v1_112_1";
  outputs = { self, nixpkgs, ...}@inputs:
    let lib = import ./lib.nix;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}