{
  description = ''libp2p implementation in Nim'';
  inputs."libp2p-master".url = "path:./master";
  inputs."libp2p-unstable".url = "path:./unstable";
  
  outputs = { self, nixpkgs, ...}@inputs:
    let lib = import ./lib.nix;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}