{
  description = ''A Funge-98 interpreter written in nim'';
  inputs."nimfunge98-master".url = "path:./master";
  inputs."nimfunge98-1_0_0".url = "path:./1_0_0";
  inputs."nimfunge98-1_0_1".url = "path:./1_0_1";
  inputs."nimfunge98-1_0_2".url = "path:./1_0_2";
  inputs."nimfunge98-1_1_0".url = "path:./1_1_0";
  outputs = { self, nixpkgs, ...}@inputs:
    let lib = import ./lib.nix;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}