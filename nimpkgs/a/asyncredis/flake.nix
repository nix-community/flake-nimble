{
  description = ''Pure Nim asyncronous driver for Redis DB'';
  inputs."asyncredis-master".url = "path:./master";
  inputs."asyncredis-v0_8".url = "path:./v0_8";
  inputs."asyncredis-v0_8_1".url = "path:./v0_8_1";
  outputs = { self, nixpkgs, ...}@inputs:
    let lib = import ./lib.nix;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}