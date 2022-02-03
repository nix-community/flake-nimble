{
  description = ''Endianness aware stream I/O for Nim'';
  inputs."binstreams-master".url = "path:./master";
  inputs."binstreams-v0_1_0".url = "path:./v0_1_0";
  inputs."binstreams-v0_1_1".url = "path:./v0_1_1";
  inputs."binstreams-v0_2_0".url = "path:./v0_2_0";
  outputs = { self, nixpkgs, ...}@inputs:
    let lib = import ./lib.nix;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}