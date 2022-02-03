{
  description = ''Bindings for Chipmunk, a fast and lightweight 2D game physics library.'';
  inputs."chipmunk7-master".url = "path:./master";
  inputs."chipmunk7-v0_3_0".url = "path:./v0_3_0";
  outputs = { self, nixpkgs, ...}@inputs:
    let lib = import ./lib.nix;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}