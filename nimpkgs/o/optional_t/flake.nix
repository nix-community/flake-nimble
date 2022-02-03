{
  description = ''Basic Option[T] library'';
  inputs."optional_t-master".url = "path:./master";
  inputs."optional_t-1_0_0".url = "path:./1_0_0";
  inputs."optional_t-1_1_0".url = "path:./1_1_0";
  inputs."optional_t-1_2_0".url = "path:./1_2_0";
  outputs = { self, nixpkgs, ...}@inputs:
    let lib = import ./lib.nix;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}