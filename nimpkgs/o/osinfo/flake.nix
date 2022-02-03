{
  description = ''Modules providing information about the OS.'';
  inputs."osinfo-master".url = "path:./master";
  inputs."osinfo-v0_2_0".url = "path:./v0_2_0";
  inputs."osinfo-v0_3_1".url = "path:./v0_3_1";
  inputs."osinfo-v0_3_2".url = "path:./v0_3_2";
  outputs = { self, nixpkgs, ...}@inputs:
    let lib = import ./lib.nix;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}