{
  description = ''Wrapper for Allegro version 5.X'';
  inputs."allegro5-master".url = "path:./master";
  inputs."allegro5-v1_0".url = "path:./v1_0";
  outputs = { self, nixpkgs, ...}@inputs:
    let lib = import ./lib.nix;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}