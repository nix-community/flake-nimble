{
  description = ''Nim to GPU shader language compiler and supporting utilities.'';
  inputs."shady-master".url = "path:./master";
  inputs."shady-0_0_1".url = "path:./0_0_1";
  outputs = { self, nixpkgs, ...}@inputs:
    let lib = import ./lib.nix;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}