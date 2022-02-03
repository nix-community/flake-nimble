{
  description = ''A Nim library for data science and machine learning'';
  inputs."mentat-master".url = "path:./master";
  inputs."mentat-v0_1_0".url = "path:./v0_1_0";
  inputs."mentat-v0_1_1".url = "path:./v0_1_1";
  inputs."mentat-v0_1_2".url = "path:./v0_1_2";
  outputs = { self, nixpkgs, ...}@inputs:
    let lib = import ./lib.nix;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}