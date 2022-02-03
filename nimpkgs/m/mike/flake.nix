{
  description = ''A very simple micro web framework'';
  inputs."mike-master".url = "path:./master";
  inputs."mike-1_0_0".url = "path:./1_0_0";
  inputs."mike-1_1_0".url = "path:./1_1_0";
  inputs."mike-1_2_0".url = "path:./1_2_0";
  inputs."mike-1_2_1".url = "path:./1_2_1";
  outputs = { self, nixpkgs, ...}@inputs:
    let lib = import ./lib.nix;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}