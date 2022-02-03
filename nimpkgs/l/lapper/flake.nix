{
  description = ''fast interval overlaps'';
  inputs."lapper-master".url = "path:./master";
  inputs."lapper-v0_1_7".url = "path:./v0_1_7";
  outputs = { self, nixpkgs, ...}@inputs:
    let lib = import ./lib.nix;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}