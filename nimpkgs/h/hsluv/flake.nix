{
  description = ''A port of HSLuv, a human friendly alternative to HSL.'';
  inputs."hsluv-master".url = "path:./master";
  inputs."hsluv-1_0_0".url = "path:./1_0_0";
  outputs = { self, nixpkgs, ...}@inputs:
    let lib = import ./lib.nix;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}