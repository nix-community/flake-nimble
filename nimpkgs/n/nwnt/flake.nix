{
  description = ''GFF <-> NWNT Converter (NeverWinter Nights Text)'';
  inputs."nwnt-main".url = "path:./main";
  inputs."nwnt-v1_0_0".url = "path:./v1_0_0";
  inputs."nwnt-v1_1_0".url = "path:./v1_1_0";
  inputs."nwnt-v1_2_0".url = "path:./v1_2_0";
  inputs."nwnt-v1_2_1".url = "path:./v1_2_1";
  inputs."nwnt-v1_2_2".url = "path:./v1_2_2";
  inputs."nwnt-v1_3_0".url = "path:./v1_3_0";
  inputs."nwnt-v1_3_1".url = "path:./v1_3_1";
  inputs."nwnt-v1_3_2".url = "path:./v1_3_2";
  inputs."nwnt-v1_3_3".url = "path:./v1_3_3";
  outputs = { self, nixpkgs, ...}@inputs:
    let lib = import ./lib.nix;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}