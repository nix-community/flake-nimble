{
  description = ''Binding for Qt 5's Qt SQL library that integrates with the features of the Nim language. Uses one API for multiple database engines.'';
  inputs."qt5_qtsql-master".url = "path:./master";
  inputs."qt5_qtsql-0_7_0".url = "path:./0_7_0";
  inputs."qt5_qtsql-1_0_0".url = "path:./1_0_0";
  inputs."qt5_qtsql-1_0_1".url = "path:./1_0_1";
  inputs."qt5_qtsql-1_0_2".url = "path:./1_0_2";
  inputs."qt5_qtsql-1_0_3".url = "path:./1_0_3";
  inputs."qt5_qtsql-1_1_0".url = "path:./1_1_0";
  inputs."qt5_qtsql-1_1_1".url = "path:./1_1_1";
  outputs = { self, nixpkgs, ...}@inputs:
    let lib = import ./lib.nix;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}