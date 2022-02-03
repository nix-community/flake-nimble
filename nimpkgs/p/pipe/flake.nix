{
  description = ''Pipe operator for nim.'';
  inputs."pipe-master".url = "path:./master";
  inputs."pipe-v0_1_0".url = "path:./v0_1_0";
  inputs."pipe-v0_1_1".url = "path:./v0_1_1";
  outputs = { self, nixpkgs, ...}@inputs:
    let lib = import ./lib.nix;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}