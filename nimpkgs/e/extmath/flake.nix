{
  description = ''Nim math library'';
  inputs."extmath-master".url = "path:./master";
  inputs."extmath-v1_0".url = "path:./v1_0";
  inputs."extmath-v1_1".url = "path:./v1_1";
  inputs."extmath-v1_2".url = "path:./v1_2";
  outputs = { self, nixpkgs, ...}@inputs:
    let lib = import ./lib.nix;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}