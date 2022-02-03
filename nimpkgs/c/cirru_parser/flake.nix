{
  description = ''Parser for Cirru syntax'';
  inputs."cirru_parser-master".url = "path:./master";
  inputs."cirru_parser-0_0_5".url = "path:./0_0_5";
  inputs."cirru_parser-v0_0_1".url = "path:./v0_0_1";
  inputs."cirru_parser-v0_0_2".url = "path:./v0_0_2";
  inputs."cirru_parser-v0_0_3".url = "path:./v0_0_3";
  inputs."cirru_parser-v0_0_4".url = "path:./v0_0_4";
  inputs."cirru_parser-v0_0_5".url = "path:./v0_0_5";
  inputs."cirru_parser-v0_1_0".url = "path:./v0_1_0";
  inputs."cirru_parser-v0_1_1".url = "path:./v0_1_1";
  inputs."cirru_parser-v0_1_2".url = "path:./v0_1_2";
  inputs."cirru_parser-v0_1_3".url = "path:./v0_1_3";
  inputs."cirru_parser-v0_1_4".url = "path:./v0_1_4";
  inputs."cirru_parser-v0_2_0".url = "path:./v0_2_0";
  inputs."cirru_parser-v0_2_1".url = "path:./v0_2_1";
  inputs."cirru_parser-v0_2_2".url = "path:./v0_2_2";
  inputs."cirru_parser-v0_2_3".url = "path:./v0_2_3";
  inputs."cirru_parser-v0_2_4".url = "path:./v0_2_4";
  inputs."cirru_parser-v0_3_0".url = "path:./v0_3_0";
  outputs = { self, nixpkgs, ...}@inputs:
    let lib = import ./lib.nix;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}