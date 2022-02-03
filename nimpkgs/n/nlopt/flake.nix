{
  description = ''A wrapper for the non-linear optimization C library Nlopt'';
  inputs."nlopt-master".url = "path:./master";
  inputs."nlopt-v0_3_0".url = "path:./v0_3_0";
  inputs."nlopt-v0_3_1".url = "path:./v0_3_1";
  outputs = { self, nixpkgs, ...}@inputs:
    let lib = import ./lib.nix;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}