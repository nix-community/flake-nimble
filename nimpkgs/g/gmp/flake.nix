{
  description = ''wrapper for the GNU multiple precision arithmetic library (GMP)'';
  inputs."gmp-master".url = "path:./master";
  inputs."gmp-0_1_1".url = "path:./0_1_1";
  inputs."gmp-v0_2_1".url = "path:./v0_2_1";
  inputs."gmp-v0_2_2".url = "path:./v0_2_2";
  inputs."gmp-v0_2_3".url = "path:./v0_2_3";
  inputs."gmp-v0_2_4".url = "path:./v0_2_4";
  inputs."gmp-v0_2_5".url = "path:./v0_2_5";
  outputs = { self, nixpkgs, ...}@inputs:
    let lib = import ./lib.nix;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}