{
  description = ''A SQLbuilder with support for NULL values'';
  inputs."sqlbuilder-master".url = "path:./master";
  inputs."sqlbuilder-v0_1_1".url = "path:./v0_1_1";
  inputs."sqlbuilder-v0_1_2".url = "path:./v0_1_2";
  inputs."sqlbuilder-v0_2_0".url = "path:./v0_2_0";
  inputs."sqlbuilder-v0_3_0".url = "path:./v0_3_0";
  inputs."sqlbuilder-v0_3_1".url = "path:./v0_3_1";
  outputs = { self, nixpkgs, ...}@inputs:
    let lib = import ./lib.nix;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}