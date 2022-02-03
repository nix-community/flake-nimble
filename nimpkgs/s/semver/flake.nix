{
  description = ''Semantic versioning parser for Nim. Allows the parsing of version strings into objects and the comparing of version objects.'';
  inputs."semver-master".url = "path:./master";
  inputs."semver-v_1_0_2".url = "path:./v_1_0_2";
  inputs."semver-v1_0_0".url = "path:./v1_0_0";
  inputs."semver-v1_0_1".url = "path:./v1_0_1";
  inputs."semver-v1_0_2".url = "path:./v1_0_2";
  inputs."semver-v1_0_3".url = "path:./v1_0_3";
  inputs."semver-v1_0_4".url = "path:./v1_0_4";
  inputs."semver-v1_1_0".url = "path:./v1_1_0";
  inputs."semver-v1_1_1".url = "path:./v1_1_1";
  outputs = { self, nixpkgs, ...}@inputs:
    let lib = import ./lib.nix;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}