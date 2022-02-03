{
  description = ''A Nim wrapper for Python's matplotlib'';
  inputs."matplotnim-master".url = "path:./master";
  inputs."matplotnim-v0_1_0".url = "path:./v0_1_0";
  inputs."matplotnim-v0_2_0".url = "path:./v0_2_0";
  outputs = { self, nixpkgs, ...}@inputs:
    let lib = import ./lib.nix;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}