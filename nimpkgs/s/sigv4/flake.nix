{
  description = ''Amazon Web Services Signature Version 4'';
  inputs."sigv4-master".url = "path:./master";
  inputs."sigv4-1_0_0".url = "path:./1_0_0";
  inputs."sigv4-1_0_1".url = "path:./1_0_1";
  inputs."sigv4-1_0_10".url = "path:./1_0_10";
  inputs."sigv4-1_0_11".url = "path:./1_0_11";
  inputs."sigv4-1_0_12".url = "path:./1_0_12";
  inputs."sigv4-1_0_13".url = "path:./1_0_13";
  inputs."sigv4-1_0_2".url = "path:./1_0_2";
  inputs."sigv4-1_0_3".url = "path:./1_0_3";
  inputs."sigv4-1_0_4".url = "path:./1_0_4";
  inputs."sigv4-1_0_5".url = "path:./1_0_5";
  inputs."sigv4-1_0_6".url = "path:./1_0_6";
  inputs."sigv4-1_0_7".url = "path:./1_0_7";
  inputs."sigv4-1_0_8".url = "path:./1_0_8";
  inputs."sigv4-1_0_9".url = "path:./1_0_9";
  inputs."sigv4-1_1_0".url = "path:./1_1_0";
  inputs."sigv4-1_2_0".url = "path:./1_2_0";
  inputs."sigv4-1_2_1".url = "path:./1_2_1";
  inputs."sigv4-1_3_0".url = "path:./1_3_0";
  inputs."sigv4-1_4_0".url = "path:./1_4_0";
  outputs = { self, nixpkgs, ...}@inputs:
    let lib = import ./lib.nix;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}