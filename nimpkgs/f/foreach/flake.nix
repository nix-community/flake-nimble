{
  description = ''A sugary for loop with syntax for typechecking loop variables'';
  inputs."foreach-master".url = "path:./master";
  inputs."foreach-1_0_0".url = "path:./1_0_0";
  inputs."foreach-1_0_1".url = "path:./1_0_1";
  inputs."foreach-1_0_2".url = "path:./1_0_2";
  outputs = { self, nixpkgs, ...}@inputs:
    let lib = import ./lib.nix;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}