{
  description = ''Utility macros for easier handling of options in Nim'';
  inputs."optionsutils-master".url = "path:./master";
  inputs."optionsutils-v1_1_0".url = "path:./v1_1_0";
  inputs."optionsutils-v1_1_1".url = "path:./v1_1_1";
  inputs."optionsutils-v1_1_2".url = "path:./v1_1_2";
  inputs."optionsutils-v1_2_0".url = "path:./v1_2_0";
  outputs = { self, nixpkgs, ...}@inputs:
    let lib = import ./lib.nix;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}