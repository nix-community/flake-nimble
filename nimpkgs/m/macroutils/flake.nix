{
  description = ''A package that makes creating macros easier'';
  inputs."macroutils-master".url = "path:./master";
  inputs."macroutils-v1_1_0".url = "path:./v1_1_0";
  inputs."macroutils-v1_2_0".url = "path:./v1_2_0";
  outputs = { self, nixpkgs, ...}@inputs:
    let lib = import ./lib.nix;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}