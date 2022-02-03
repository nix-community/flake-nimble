{
  description = ''Another MessagePack implementation written in pure nim'';
  inputs."msgpack4nim-master".url = "path:./master";
  inputs."msgpack4nim-v0_2_9".url = "path:./v0_2_9";
  inputs."msgpack4nim-v0_3_0".url = "path:./v0_3_0";
  inputs."msgpack4nim-v0_3_1".url = "path:./v0_3_1";
  outputs = { self, nixpkgs, ...}@inputs:
    let lib = import ./lib.nix;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}