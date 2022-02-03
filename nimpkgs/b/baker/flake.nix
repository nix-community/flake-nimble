{
  description = ''Static website generation'';
  inputs."baker-master".url = "path:./master";
  inputs."baker-v1_6".url = "path:./v1_6";
  inputs."baker-v1_8".url = "path:./v1_8";
  inputs."baker-v1_8_2".url = "path:./v1_8_2";
  inputs."baker-v1_8_3".url = "path:./v1_8_3";
  inputs."baker-v2_0_0".url = "path:./v2_0_0";
  inputs."baker-v2_0_1".url = "path:./v2_0_1";
  inputs."baker-v2_0_2".url = "path:./v2_0_2";
  inputs."baker-v2_0_3".url = "path:./v2_0_3";
  inputs."baker-v2_0_4".url = "path:./v2_0_4";
  inputs."baker-v2_0_5".url = "path:./v2_0_5";
  inputs."baker-v2_0_7".url = "path:./v2_0_7";
  inputs."baker-v2_0_9".url = "path:./v2_0_9";
  outputs = { self, nixpkgs, ...}@inputs:
    let lib = import ./lib.nix;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}