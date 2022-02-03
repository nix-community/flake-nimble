{
  description = ''SHIORI Protocol Parser/Builder'';
  inputs."shiori-master".url = "path:./master";
  inputs."shiori-v1_0_0".url = "path:./v1_0_0";
  inputs."shiori-v1_1_0".url = "path:./v1_1_0";
  inputs."shiori-v1_2_0".url = "path:./v1_2_0";
  inputs."shiori-v1_3_0".url = "path:./v1_3_0";
  outputs = { self, nixpkgs, ...}@inputs:
    let lib = import ./lib.nix;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}