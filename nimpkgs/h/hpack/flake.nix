{
  description = ''HPACK (Header Compression for HTTP/2)'';
  inputs."hpack-master".url = "path:./master";
  inputs."hpack-v0_1".url = "path:./v0_1";
  inputs."hpack-v0_1_1".url = "path:./v0_1_1";
  inputs."hpack-v0_2_0".url = "path:./v0_2_0";
  outputs = { self, nixpkgs, ...}@inputs:
    let lib = import ./lib.nix;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}