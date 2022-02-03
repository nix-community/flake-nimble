{
  description = ''Additional functions for sequences that are not present in sequtils'';
  inputs."sequtils2-master".url = "path:./master";
  inputs."sequtils2-1_0_0".url = "path:./1_0_0";
  inputs."sequtils2-1_1_0".url = "path:./1_1_0";
  outputs = { self, nixpkgs, ...}@inputs:
    let lib = import ./lib.nix;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}