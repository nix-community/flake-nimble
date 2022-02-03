{
  description = ''Parse fixed-width fields within lines of text (complementary to parsecsv)'';
  inputs."parsefixed-master".url = "path:./master";
  inputs."parsefixed-0_1_2".url = "path:./0_1_2";
  outputs = { self, nixpkgs, ...}@inputs:
    let lib = import ./lib.nix;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}