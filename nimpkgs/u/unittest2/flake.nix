{
  description = ''unittest fork focused on parallel test execution'';
  inputs."unittest2-master".url = "path:./master";
  inputs."unittest2-v0_0_1".url = "path:./v0_0_1";
  inputs."unittest2-v0_0_2".url = "path:./v0_0_2";
  inputs."unittest2-v0_0_3".url = "path:./v0_0_3";
  outputs = { self, nixpkgs, ...}@inputs:
    let lib = import ./lib.nix;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}