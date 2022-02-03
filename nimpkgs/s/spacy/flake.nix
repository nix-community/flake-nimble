{
  description = ''Spatial data structures for Nim.'';
  inputs."spacy-master".url = "path:./master";
  inputs."spacy-0_0_1".url = "path:./0_0_1";
  inputs."spacy-0_0_2".url = "path:./0_0_2";
  inputs."spacy-0_0_3".url = "path:./0_0_3";
  inputs."spacy-0_0_4".url = "path:./0_0_4";
  outputs = { self, nixpkgs, ...}@inputs:
    let lib = import ./lib.nix;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}