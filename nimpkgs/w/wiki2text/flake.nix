{
  description = ''Quickly extracts natural-language text from a MediaWiki XML file.'';
  inputs."wiki2text-master".url = "path:./master";
  inputs."wiki2text-v0_1".url = "path:./v0_1";
  inputs."wiki2text-v0_2".url = "path:./v0_2";
  inputs."wiki2text-v0_2_1".url = "path:./v0_2_1";
  outputs = { self, nixpkgs, ...}@inputs:
    let lib = import ./lib.nix;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}