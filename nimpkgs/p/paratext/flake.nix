{
  description = ''A library for rendering text with paranim'';
  inputs."paratext-master".url = "path:./master";
  inputs."paratext-0_1_0".url = "path:./0_1_0";
  inputs."paratext-0_10_0".url = "path:./0_10_0";
  inputs."paratext-0_11_0".url = "path:./0_11_0";
  inputs."paratext-0_12_0".url = "path:./0_12_0";
  inputs."paratext-0_2_0".url = "path:./0_2_0";
  inputs."paratext-0_3_0".url = "path:./0_3_0";
  inputs."paratext-0_4_0".url = "path:./0_4_0";
  inputs."paratext-0_5_0".url = "path:./0_5_0";
  inputs."paratext-0_6_0".url = "path:./0_6_0";
  inputs."paratext-0_7_0".url = "path:./0_7_0";
  inputs."paratext-0_8_0".url = "path:./0_8_0";
  inputs."paratext-0_9_0".url = "path:./0_9_0";
  outputs = { self, nixpkgs, ...}@inputs:
    let lib = import ./lib.nix;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}