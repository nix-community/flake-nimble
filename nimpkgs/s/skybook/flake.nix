{
  description = ''Light weight bookmark manager(delicious alternative)'';
  inputs."skybook-master".url = "path:./master";
  inputs."skybook-1_0".url = "path:./1_0";
  inputs."skybook-1_0_1".url = "path:./1_0_1";
  inputs."skybook-1_0_2".url = "path:./1_0_2";
  inputs."skybook-1_0_3".url = "path:./1_0_3";
  outputs = { self, nixpkgs, ...}@inputs:
    let lib = import ./lib.nix;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}