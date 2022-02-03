{
  description = ''Collection of Diff stringifications (and reversals)'';
  inputs."diffoutput-master".url = "path:./master";
  inputs."diffoutput-v0_1_1".url = "path:./v0_1_1";
  inputs."diffoutput-v0_1_2".url = "path:./v0_1_2";
  outputs = { self, nixpkgs, ...}@inputs:
    let lib = import ./lib.nix;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}