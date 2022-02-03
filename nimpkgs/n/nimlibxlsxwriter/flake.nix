{
  description = ''libxslxwriter wrapper for Nim'';
  inputs."nimlibxlsxwriter-master".url = "path:./master";
  inputs."nimlibxlsxwriter-v0_1_1".url = "path:./v0_1_1";
  inputs."nimlibxlsxwriter-v0_1_2".url = "path:./v0_1_2";
  inputs."nimlibxlsxwriter-v0_1_3".url = "path:./v0_1_3";
  inputs."nimlibxlsxwriter-v0_3_0".url = "path:./v0_3_0";
  outputs = { self, nixpkgs, ...}@inputs:
    let lib = import ./lib.nix;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}