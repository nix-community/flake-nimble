{
  description = ''syntax sugar for assignments'';
  inputs."assigns-master".url = "path:./master";
  inputs."assigns-v0_4_4".url = "path:./v0_4_4";
  inputs."assigns-v0_5_1".url = "path:./v0_5_1";
  inputs."assigns-v0_6_0".url = "path:./v0_6_0";
  outputs = { self, nixpkgs, ...}@inputs:
    let lib = import ./lib.nix;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}