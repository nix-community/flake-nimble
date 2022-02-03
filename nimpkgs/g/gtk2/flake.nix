{
  description = ''Wrapper for gtk2, a feature rich toolkit for creating graphical user interfaces'';
  inputs."gtk2-master".url = "path:./master";
  inputs."gtk2-v1_0".url = "path:./v1_0";
  inputs."gtk2-v1_2".url = "path:./v1_2";
  inputs."gtk2-v1_3".url = "path:./v1_3";
  outputs = { self, nixpkgs, ...}@inputs:
    let lib = import ./lib.nix;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}