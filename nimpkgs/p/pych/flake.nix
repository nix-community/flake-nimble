{
  description = ''A tool that watches Python files and re-runs them on change.'';
  inputs."pych-master".url = "path:./master";
  inputs."pych-v1_0_0".url = "path:./v1_0_0";
  inputs."pych-v1_0_1".url = "path:./v1_0_1";
  inputs."pych-v1_0_2".url = "path:./v1_0_2";
  outputs = { self, nixpkgs, ...}@inputs:
    let lib = import ./lib.nix;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}