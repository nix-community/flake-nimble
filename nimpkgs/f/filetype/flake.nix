{
  description = ''Small and dependency free Nim package to infer file and MIME type checking the magic numbers signature.'';
  inputs."filetype-main".url = "path:./main";
  inputs."filetype-v0_1_0".url = "path:./v0_1_0";
  inputs."filetype-v0_2_0".url = "path:./v0_2_0";
  inputs."filetype-v0_3_0".url = "path:./v0_3_0";
  inputs."filetype-v0_4_0".url = "path:./v0_4_0";
  inputs."filetype-v0_5_0".url = "path:./v0_5_0";
  inputs."filetype-v0_5_1".url = "path:./v0_5_1";
  inputs."filetype-v0_6_0".url = "path:./v0_6_0";
  inputs."filetype-v0_7_0".url = "path:./v0_7_0";
  inputs."filetype-v0_7_1".url = "path:./v0_7_1";
  inputs."filetype-v0_8_0".url = "path:./v0_8_0";
  inputs."filetype-v0_8_1".url = "path:./v0_8_1";
  inputs."filetype-v0_9_0".url = "path:./v0_9_0";
  outputs = { self, nixpkgs, ...}@inputs:
    let lib = import ./lib.nix;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}