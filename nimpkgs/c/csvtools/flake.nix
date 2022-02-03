{
  description = ''Manage CSV files'';
  inputs."csvtools-master".url = "path:./master";
  inputs."csvtools-0_1_0".url = "path:./0_1_0";
  inputs."csvtools-0_1_1".url = "path:./0_1_1";
  inputs."csvtools-0_1_2".url = "path:./0_1_2";
  inputs."csvtools-0_1_3".url = "path:./0_1_3";
  inputs."csvtools-0_1_4".url = "path:./0_1_4";
  inputs."csvtools-0_2_0".url = "path:./0_2_0";
  inputs."csvtools-0_2_1".url = "path:./0_2_1";
  outputs = { self, nixpkgs, ...}@inputs:
    let lib = import ./lib.nix;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}