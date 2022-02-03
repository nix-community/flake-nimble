{
  description = ''A high level SQLite API for Nim'';
  inputs."sqliteral-master".url = "path:./master";
  inputs."sqliteral-1_0_0".url = "path:./1_0_0";
  inputs."sqliteral-1_1_0".url = "path:./1_1_0";
  inputs."sqliteral-1_2_0".url = "path:./1_2_0";
  inputs."sqliteral-1_3_0".url = "path:./1_3_0";
  inputs."sqliteral-2_0_0".url = "path:./2_0_0";
  inputs."sqliteral-2_0_1".url = "path:./2_0_1";
  inputs."sqliteral-2_0_2".url = "path:./2_0_2";
  inputs."sqliteral-3_0_0".url = "path:./3_0_0";
  outputs = { self, nixpkgs, ...}@inputs:
    let lib = import ./lib.nix;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}