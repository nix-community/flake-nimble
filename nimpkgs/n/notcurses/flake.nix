{
  description = ''A low-level Nim wrapper for Notcurses: blingful TUIs and character graphics'';
  inputs."notcurses-master".url = "path:./master";
  inputs."notcurses-v2_3_13".url = "path:./v2_3_13";
  inputs."notcurses-v2_3_14".url = "path:./v2_3_14";
  inputs."notcurses-v2_3_15".url = "path:./v2_3_15";
  inputs."notcurses-v2_3_16".url = "path:./v2_3_16";
  inputs."notcurses-v2_3_17".url = "path:./v2_3_17";
  inputs."notcurses-v2_3_18".url = "path:./v2_3_18";
  inputs."notcurses-v2_4_0".url = "path:./v2_4_0";
  inputs."notcurses-v2_4_1".url = "path:./v2_4_1";
  inputs."notcurses-v2_4_2".url = "path:./v2_4_2";
  inputs."notcurses-v2_4_3".url = "path:./v2_4_3";
  inputs."notcurses-v2_4_4".url = "path:./v2_4_4";
  inputs."notcurses-v2_4_5".url = "path:./v2_4_5";
  inputs."notcurses-v2_4_6".url = "path:./v2_4_6";
  inputs."notcurses-v2_4_7".url = "path:./v2_4_7";
  inputs."notcurses-v2_4_8".url = "path:./v2_4_8";
  inputs."notcurses-v2_4_9".url = "path:./v2_4_9";
  inputs."notcurses-v3_0_0".url = "path:./v3_0_0";
  inputs."notcurses-v3_0_1".url = "path:./v3_0_1";
  inputs."notcurses-v3_0_2".url = "path:./v3_0_2";
  inputs."notcurses-v3_0_3".url = "path:./v3_0_3";
  inputs."notcurses-v3_0_4".url = "path:./v3_0_4";
  inputs."notcurses-v3_0_5".url = "path:./v3_0_5";
  inputs."notcurses-v3_0_6".url = "path:./v3_0_6";
  outputs = { self, nixpkgs, ...}@inputs:
    let lib = import ./lib.nix;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}