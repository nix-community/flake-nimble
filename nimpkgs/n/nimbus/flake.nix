{
  description = ''An Ethereum 2.0 Sharding Client for Resource-Restricted Devices'';
  inputs."nimbus-master".url = "path:./master";
  inputs."nimbus-201903-testnet0".url = "path:./201903-testnet0";
  outputs = { self, nixpkgs, ...}@inputs:
    let lib = import ./lib.nix;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}