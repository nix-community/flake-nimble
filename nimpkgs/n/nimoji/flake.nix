{
  description = ''🍕🍺 emoji support for Nim 👑 and the world 🌍'';
  inputs."nimoji-master".url = "path:./master";
  inputs."nimoji-v0_1_0".url = "path:./v0_1_0";
  inputs."nimoji-v0_1_1".url = "path:./v0_1_1";
  inputs."nimoji-v0_1_2".url = "path:./v0_1_2";
  inputs."nimoji-v0_1_3".url = "path:./v0_1_3";
  inputs."nimoji-v0_1_4".url = "path:./v0_1_4";
  outputs = { self, nixpkgs, ...}@inputs:
    let lib = import ./lib.nix;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}