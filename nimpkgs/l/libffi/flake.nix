{
  description = ''libffi wrapper for Nim.'';
  inputs."libffi-master".url = "path:./master";
  inputs."libffi-1_0_3".url = "path:./1_0_3";
  inputs."libffi-1_0_4".url = "path:./1_0_4";
  outputs = { self, nixpkgs, ...}@inputs:
    let lib = import ./lib.nix;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}