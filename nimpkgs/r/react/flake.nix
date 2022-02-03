{
  description = ''React.js bindings for Nim'';
  inputs."react-master".url = "path:./master";
  inputs."react-0_1_0".url = "path:./0_1_0";
  inputs."react-0_1_1".url = "path:./0_1_1";
  inputs."react-0_1_2".url = "path:./0_1_2";
  inputs."react-0_2_0".url = "path:./0_2_0";
  outputs = { self, nixpkgs, ...}@inputs:
    let lib = import ./lib.nix;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}