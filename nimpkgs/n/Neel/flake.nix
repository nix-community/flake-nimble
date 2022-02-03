{
  description = ''A Nim library for making lightweight Electron-like HTML/JS GUI apps, with full access to Nim capabilities.'';
  inputs."neel-master".url = "path:./master";
  inputs."neel-0_2_0".url = "path:./0_2_0";
  inputs."neel-v0_2_0".url = "path:./v0_2_0";
  inputs."neel-v0_2_1".url = "path:./v0_2_1";
  inputs."neel-v0_2_2".url = "path:./v0_2_2";
  inputs."neel-v0_2_3".url = "path:./v0_2_3";
  inputs."neel-v0_2_4".url = "path:./v0_2_4";
  inputs."neel-v0_2_5".url = "path:./v0_2_5";
  inputs."neel-v0_2_6".url = "path:./v0_2_6";
  inputs."neel-v0_2_7".url = "path:./v0_2_7";
  inputs."neel-v0_3_0".url = "path:./v0_3_0";
  inputs."neel-v0_3_1".url = "path:./v0_3_1";
  inputs."neel-v0_3_2".url = "path:./v0_3_2";
  inputs."neel-v0_4_0".url = "path:./v0_4_0";
  outputs = { self, nixpkgs, ...}@inputs:
    let lib = import ./lib.nix;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}