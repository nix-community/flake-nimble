{
  description = ''Wrapper around the GMP bindings for the Nim language.'';
  inputs."bignum-master".url = "path:./master";
  inputs."bignum-1_0_2".url = "path:./1_0_2";
  inputs."bignum-1_0_3".url = "path:./1_0_3";
  inputs."bignum-1_0_4".url = "path:./1_0_4";
  outputs = { self, nixpkgs, ...}@inputs:
    let lib = import ./lib.nix;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}