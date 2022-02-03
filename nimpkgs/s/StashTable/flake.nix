{
  description = ''Concurrent hash table'';
  inputs."stashtable-master".url = "path:./master";
  inputs."stashtable-1_0_0".url = "path:./1_0_0";
  inputs."stashtable-1_1_0".url = "path:./1_1_0";
  inputs."stashtable-1_2_0".url = "path:./1_2_0";
  inputs."stashtable-1_2_1".url = "path:./1_2_1";
  outputs = { self, nixpkgs, ...}@inputs:
    let lib = import ./lib.nix;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}