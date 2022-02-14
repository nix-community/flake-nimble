{
  description = ''A wrapper for the cMPFIT non-linear least squares fitting library'';
  inputs."mpfit-master".url = "path:./master";
  inputs."mpfit-v0_1_1".url = "path:./v0_1_1";
  inputs."mpfit-v0_1_2".url = "path:./v0_1_2";
  outputs = { self, nixpkgs, ...}@inputs:
    let lib = import ./lib.nix;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}