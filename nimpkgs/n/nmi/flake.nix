{
  description = ''nmi display animations aimed to correct users who accidentally enter nmi instead of nim.'';
  inputs."nmi-master".url = "path:./master";
  inputs."nmi-v1_0_0".url = "path:./v1_0_0";
  inputs."nmi-v1_0_1".url = "path:./v1_0_1";
  inputs."nmi-v1_1_0".url = "path:./v1_1_0";
  outputs = { self, nixpkgs, ...}@inputs:
    let lib = import ./lib.nix;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}