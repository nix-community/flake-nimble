{
  description = ''Mapping nim type to xml node, and parse from it.'';
  
  inputs."xmlio-v0_1_0".url = "path:./v0_1_0";
  inputs."xmlio-v0_1_1".url = "path:./v0_1_1";
  inputs."xmlio-v0_1_10".url = "path:./v0_1_10";
  inputs."xmlio-v0_1_11".url = "path:./v0_1_11";
  inputs."xmlio-v0_1_12".url = "path:./v0_1_12";
  inputs."xmlio-v0_1_2".url = "path:./v0_1_2";
  inputs."xmlio-v0_1_3".url = "path:./v0_1_3";
  inputs."xmlio-v0_1_4".url = "path:./v0_1_4";
  inputs."xmlio-v0_1_6".url = "path:./v0_1_6";
  inputs."xmlio-v0_1_7".url = "path:./v0_1_7";
  inputs."xmlio-v0_1_8".url = "path:./v0_1_8";
  inputs."xmlio-v0_1_9".url = "path:./v0_1_9";
  inputs."xmlio-v0_2_0".url = "path:./v0_2_0";
  inputs."xmlio-v0_2_1".url = "path:./v0_2_1";
  inputs."xmlio-v0_2_2".url = "path:./v0_2_2";
  inputs."xmlio-v0_2_3".url = "path:./v0_2_3";
  inputs."xmlio-v0_2_4".url = "path:./v0_2_4";
  inputs."xmlio-v0_2_5".url = "path:./v0_2_5";
  outputs = { self, nixpkgs, ...}@inputs:
    let lib = import ./lib.nix;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}