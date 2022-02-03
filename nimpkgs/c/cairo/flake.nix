{
  description = ''Wrapper for cairo, a vector graphics library with display and print output'';
  inputs."cairo-master".url = "path:./master";
  inputs."cairo-1_1_0".url = "path:./1_1_0";
  inputs."cairo-1_1_1".url = "path:./1_1_1";
  outputs = { self, nixpkgs, ...}@inputs:
    let lib = import ./lib.nix;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}