{
  description = ''A command line interface for shortening URLs with ZWS instances'';
  inputs."zws-main".url = "path:./main";
  inputs."zws-v1_0_0".url = "path:./v1_0_0";
  inputs."zws-v1_0_1".url = "path:./v1_0_1";
  inputs."zws-v1_1_0".url = "path:./v1_1_0";
  inputs."zws-v1_1_1".url = "path:./v1_1_1";
  inputs."zws-v1_1_2".url = "path:./v1_1_2";
  inputs."zws-v1_1_3".url = "path:./v1_1_3";
  inputs."zws-v1_2_0".url = "path:./v1_2_0";
  inputs."zws-v1_2_1".url = "path:./v1_2_1";
  inputs."zws-v1_2_2".url = "path:./v1_2_2";
  inputs."zws-v1_3_0".url = "path:./v1_3_0";
  inputs."zws-v1_4_0".url = "path:./v1_4_0";
  inputs."zws-v1_5_0".url = "path:./v1_5_0";
  outputs = { self, nixpkgs, ...}@inputs:
    let lib = import ./lib.nix;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}