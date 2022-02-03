{
  description = ''Convert accents (diacritics) from strings to latin characters.'';
  inputs."latinize-master".url = "path:./master";
  inputs."latinize-v0_1".url = "path:./v0_1";
  outputs = { self, nixpkgs, ...}@inputs:
    let lib = import ./lib.nix;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}