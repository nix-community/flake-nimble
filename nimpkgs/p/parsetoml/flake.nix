{
  description = ''Library for parsing TOML files.'';
  inputs."parsetoml-master".url = "path:./master";
  inputs."parsetoml-v0_4_0".url = "path:./v0_4_0";
  inputs."parsetoml-v0_5_0".url = "path:./v0_5_0";
  inputs."parsetoml-v0_6_0".url = "path:./v0_6_0";
  outputs = { self, nixpkgs, ...}@inputs:
    let lib = import ./lib.nix;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}