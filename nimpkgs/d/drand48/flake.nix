{
  description = ''Nim implementation of the standard unix drand48 pseudo random number generator'';
  inputs."drand48-master".url = "path:./master";
  inputs."drand48-v1_0_0".url = "path:./v1_0_0";
  inputs."drand48-v1_0_1".url = "path:./v1_0_1";
  inputs."drand48-v1_1_0".url = "path:./v1_1_0";
  inputs."drand48-v1_1_1".url = "path:./v1_1_1";
  inputs."drand48-v1_1_2".url = "path:./v1_1_2";
  outputs = { self, nixpkgs, ...}@inputs:
    let lib = import ./lib.nix;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}