{
  description = ''Transformer'';
  inputs."retranslator-master".url = "path:./master";
  inputs."retranslator-0_0_3".url = "path:./0_0_3";
  inputs."retranslator-0_0_4".url = "path:./0_0_4";
  inputs."retranslator-0_0_5".url = "path:./0_0_5";
  inputs."retranslator-0_0_6".url = "path:./0_0_6";
  inputs."retranslator-0_0_7".url = "path:./0_0_7";
  inputs."retranslator-0_0_8".url = "path:./0_0_8";
  inputs."retranslator-0_1_0".url = "path:./0_1_0";
  inputs."retranslator-0_2_0".url = "path:./0_2_0";
  inputs."retranslator-0_2_1".url = "path:./0_2_1";
  inputs."retranslator-0_2_2".url = "path:./0_2_2";
  inputs."retranslator-0_3_0".url = "path:./0_3_0";
  inputs."retranslator-0_3_1".url = "path:./0_3_1";
  inputs."retranslator-0_3_2".url = "path:./0_3_2";
  inputs."retranslator-0_3_3".url = "path:./0_3_3";
  inputs."retranslator-0_3_4".url = "path:./0_3_4";
  outputs = { self, nixpkgs, ...}@inputs:
    let lib = import ./lib.nix;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}