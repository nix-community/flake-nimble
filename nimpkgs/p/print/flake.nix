{
  description = ''Print is a set of pretty print macros, useful for print-debugging.'';
  inputs."print-master".url = "path:./master";
  inputs."print-0_1_0".url = "path:./0_1_0";
  inputs."print-0_2_0".url = "path:./0_2_0";
  inputs."print-1_0_0".url = "path:./1_0_0";
  inputs."print-1_0_1".url = "path:./1_0_1";
  inputs."print-1_0_2".url = "path:./1_0_2";
  inputs."print-v0_1_0".url = "path:./v0_1_0";
  outputs = { self, nixpkgs, ...}@inputs:
    let lib = import ./lib.nix;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}