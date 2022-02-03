{
  description = ''A Nim library to create and manage temporary directories.'';
  inputs."tempdir-master".url = "path:./master";
  inputs."tempdir-v1_0_0".url = "path:./v1_0_0";
  inputs."tempdir-v1_0_1".url = "path:./v1_0_1";
  outputs = { self, nixpkgs, ...}@inputs:
    let lib = import ./lib.nix;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}