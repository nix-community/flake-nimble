{
  description = ''Pure nim implementation of MurmurHash'';
  inputs."murmurhash-master".url = "path:./master";
  inputs."murmurhash-0_3_0".url = "path:./0_3_0";
  inputs."murmurhash-0_4_0".url = "path:./0_4_0";
  outputs = { self, nixpkgs, ...}@inputs:
    let lib = import ./lib.nix;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}