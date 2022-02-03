{
  description = ''Calculate the next semver version given the git log and previous version'';
  inputs."conventional_semver-master".url = "path:./master";
  inputs."conventional_semver-0_1_0".url = "path:./0_1_0";
  inputs."conventional_semver-0_2_0".url = "path:./0_2_0";
  outputs = { self, nixpkgs, ...}@inputs:
    let lib = import ./lib.nix;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}