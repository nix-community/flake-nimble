{
  description = ''Word2vec implemented in nim.'';
  inputs."word2vec-master".url = "path:./master";
  inputs."word2vec-0_0_1".url = "path:./0_0_1";
  inputs."word2vec-v0_0_1".url = "path:./v0_0_1";
  outputs = { self, nixpkgs, ...}@inputs:
    let lib = import ./lib.nix;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}