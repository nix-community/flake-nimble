{
  description = ''A library of functions to make creating games using Nim and SDL2 easier. This does not intend to be a full blown engine and tries to keep all the components loosely coupled so that individual parts can be used separately.'';
  inputs."gamelib-master".url = "path:./master";
  
  outputs = { self, nixpkgs, ...}@inputs:
    let lib = import ./lib.nix;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}