{
  description = ''Drag and drop source / target'';
  inputs."dnd-master".url = "path:./master";
  inputs."dnd-v0_5_0".url = "path:./v0_5_0";
  inputs."dnd-v0_6_0".url = "path:./v0_6_0";
  outputs = { self, nixpkgs, ...}@inputs:
    let lib = import ./lib.nix;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}