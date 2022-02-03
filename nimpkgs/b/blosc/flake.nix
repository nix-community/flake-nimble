{
  description = ''Bit Shuffling Block Compressor (C-Blosc)'';
  inputs."blosc-master".url = "path:./master";
  inputs."blosc-v1_15_0".url = "path:./v1_15_0";
  outputs = { self, nixpkgs, ...}@inputs:
    let lib = import ./lib.nix;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}