{
  description = ''Jsmn - a world fastest JSON parser - in pure Nim'';
  inputs."jsmn-master".url = "path:./master";
  inputs."jsmn-0_1_0".url = "path:./0_1_0";
  inputs."jsmn-0_1_1".url = "path:./0_1_1";
  inputs."jsmn-0_1_2".url = "path:./0_1_2";
  inputs."jsmn-0_1_3".url = "path:./0_1_3";
  inputs."jsmn-0_1_4".url = "path:./0_1_4";
  inputs."jsmn-0_1_5".url = "path:./0_1_5";
  inputs."jsmn-0_1_6".url = "path:./0_1_6";
  inputs."jsmn-0_2".url = "path:./0_2";
  outputs = { self, nixpkgs, ...}@inputs:
    let lib = import ./lib.nix;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}