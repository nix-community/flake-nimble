{
  description = ''Renormalization of colloidal charges of polydipserse dispersions using the Poisson-Boltzmann equation'';
  inputs."polypbren-master".url = "path:./master";
  inputs."polypbren-v0_4-paper".url = "path:./v0_4-paper";
  inputs."polypbren-v0_4_1".url = "path:./v0_4_1";
  inputs."polypbren-v0_4_2".url = "path:./v0_4_2";
  inputs."polypbren-v0_4_3".url = "path:./v0_4_3";
  outputs = { self, nixpkgs, ...}@inputs:
    let lib = import ./lib.nix;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}