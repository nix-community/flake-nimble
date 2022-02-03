{
  description = ''tools for handling CSV files (comma or tab-separated) with an API similar to Python's CSVDictReader and -Writer.'';
  inputs."csvtable-master".url = "path:./master";
  inputs."csvtable-0_2_0".url = "path:./0_2_0";
  inputs."csvtable-0_3_0".url = "path:./0_3_0";
  inputs."csvtable-v0_3_1".url = "path:./v0_3_1";
  outputs = { self, nixpkgs, ...}@inputs:
    let lib = import ./lib.nix;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}