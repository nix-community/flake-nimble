{
  description = ''Nim bindings for Open color'';
  
  inputs."opencolor-v1_9_1".url = "path:./v1_9_1";
  inputs."opencolor-v1_9_1_1".url = "path:./v1_9_1_1";
  outputs = { self, nixpkgs, ...}@inputs:
    let lib = import ./lib.nix;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}