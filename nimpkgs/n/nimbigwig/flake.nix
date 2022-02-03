{
  description = ''libBigWig wrapper for Nim'';
  inputs."nimbigwig-master".url = "path:./master";
  inputs."nimbigwig-v0_1_1".url = "path:./v0_1_1";
  inputs."nimbigwig-v0_1_2".url = "path:./v0_1_2";
  outputs = { self, nixpkgs, ...}@inputs:
    let lib = import ./lib.nix;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}