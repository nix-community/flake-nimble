{
  description = ''Create HyperText with Nim.'';
  inputs."hyperscript-master".url = "path:./master";
  inputs."hyperscript-v0_1-alpha".url = "path:./v0_1-alpha";
  outputs = { self, nixpkgs, ...}@inputs:
    let lib = import ./lib.nix;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}