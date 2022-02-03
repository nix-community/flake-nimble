{
  description = ''basic monadic maybe type for Nim'';
  inputs."maybe-master".url = "path:./master";
  inputs."maybe-1_0".url = "path:./1_0";
  inputs."maybe-2_0".url = "path:./2_0";
  inputs."maybe-2_2".url = "path:./2_2";
  outputs = { self, nixpkgs, ...}@inputs:
    let lib = import ./lib.nix;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}