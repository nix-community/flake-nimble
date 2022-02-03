{
  description = ''A deprecated reimplementation in pure Nim of eth-keys, the common API for Ethereum key operations (now part of the 'eth' package).'';
  inputs."eth_keys-master".url = "path:./master";
  
  outputs = { self, nixpkgs, ...}@inputs:
    let lib = import ./lib.nix;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}