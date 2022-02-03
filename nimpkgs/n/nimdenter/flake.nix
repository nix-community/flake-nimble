{
  description = ''A tool for people who don't like Nim's indentation-based syntax'';
  inputs."nimdenter-master".url = "path:./master";
  inputs."nimdenter-2022_1_7".url = "path:./2022_1_7";
  outputs = { self, nixpkgs, ...}@inputs:
    let lib = import ./lib.nix;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}