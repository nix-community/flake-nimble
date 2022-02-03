{
  description = ''Nim wrapper for miniz'';
  inputs."nim_miniz-master".url = "path:./master";
  inputs."nim_miniz-1_0_1".url = "path:./1_0_1";
  inputs."nim_miniz-1_1_0".url = "path:./1_1_0";
  inputs."nim_miniz-v1_0_0".url = "path:./v1_0_0";
  outputs = { self, nixpkgs, ...}@inputs:
    let lib = import ./lib.nix;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}