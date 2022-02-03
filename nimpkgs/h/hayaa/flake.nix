{
  description = ''Conway's Game of Life implemented in Nim'';
  inputs."hayaa-main".url = "path:./main";
  inputs."hayaa-v0_2_0".url = "path:./v0_2_0";
  inputs."hayaa-v0_2_1".url = "path:./v0_2_1";
  inputs."hayaa-v0_3_0".url = "path:./v0_3_0";
  outputs = { self, nixpkgs, ...}@inputs:
    let lib = import ./lib.nix;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}