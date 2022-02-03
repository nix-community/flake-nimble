{
  description = ''A game engine for rapid development and easy prototyping'';
  inputs."rapid-master".url = "path:./master";
  inputs."rapid-2019_1".url = "path:./2019_1";
  outputs = { self, nixpkgs, ...}@inputs:
    let lib = import ./lib.nix;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}