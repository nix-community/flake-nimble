{
  description = ''A fixed point number library in pure Nim.'';
  inputs."fpn-master".url = "path:./master";
  inputs."fpn-v0_0_1".url = "path:./v0_0_1";
  inputs."fpn-v0_1_0".url = "path:./v0_1_0";
  outputs = { self, nixpkgs, ...}@inputs:
    let lib = import ./lib.nix;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}