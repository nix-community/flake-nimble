{
  description = ''Nim modules for access to system Bluetooth resources.'';
  inputs."nimbluez-master".url = "path:./master";
  inputs."nimbluez-v0_1_0".url = "path:./v0_1_0";
  inputs."nimbluez-v0_1_1".url = "path:./v0_1_1";
  inputs."nimbluez-v0_1_2".url = "path:./v0_1_2";
  outputs = { self, nixpkgs, ...}@inputs:
    let lib = import ./lib.nix;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}