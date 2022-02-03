{
  description = ''Deal with Windows Registry from Nim.'';
  inputs."winregistry-master".url = "path:./master";
  inputs."winregistry-v0_1_7".url = "path:./v0_1_7";
  inputs."winregistry-v0_1_8".url = "path:./v0_1_8";
  inputs."winregistry-v0_2_0".url = "path:./v0_2_0";
  inputs."winregistry-v0_2_1".url = "path:./v0_2_1";
  outputs = { self, nixpkgs, ...}@inputs:
    let lib = import ./lib.nix;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}