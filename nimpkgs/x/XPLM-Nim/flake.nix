{
  description = ''X-Plane XPLM SDK wrapper'';
  inputs."XPLM-Nim-develop".url = "path:./develop";
  inputs."XPLM-Nim-master".url = "path:./master";
  inputs."XPLM-Nim-v0_1_0".url = "path:./v0_1_0";
  inputs."XPLM-Nim-v0_1_1".url = "path:./v0_1_1";
  inputs."XPLM-Nim-v0_2_0".url = "path:./v0_2_0";
  inputs."XPLM-Nim-v0_2_1".url = "path:./v0_2_1";
  inputs."XPLM-Nim-v0_2_2".url = "path:./v0_2_2";
  inputs."XPLM-Nim-v0_2_3".url = "path:./v0_2_3";
  inputs."XPLM-Nim-v0_2_4".url = "path:./v0_2_4";
  inputs."XPLM-Nim-v0_2_5".url = "path:./v0_2_5";
  outputs = { self, nixpkgs, ...}@inputs:
    let lib = import ./lib.nix;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}