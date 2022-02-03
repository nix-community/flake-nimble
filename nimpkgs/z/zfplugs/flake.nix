{
  description = ''This is the plugins for the zfcore framework https://github.com/zendbit/nim.zfcore'';
  inputs."zfplugs-master".url = "path:./master";
  inputs."zfplugs-0_0_19".url = "path:./0_0_19";
  inputs."zfplugs-0_0_20".url = "path:./0_0_20";
  inputs."zfplugs-0_0_21".url = "path:./0_0_21";
  inputs."zfplugs-0_0_22".url = "path:./0_0_22";
  inputs."zfplugs-0_0_23".url = "path:./0_0_23";
  inputs."zfplugs-0_1_1".url = "path:./0_1_1";
  inputs."zfplugs-0_1_2".url = "path:./0_1_2";
  inputs."zfplugs-0_1_4".url = "path:./0_1_4";
  inputs."zfplugs-v0_0_3".url = "path:./v0_0_3";
  inputs."zfplugs-v0_0_5".url = "path:./v0_0_5";
  inputs."zfplugs-v0_0_6".url = "path:./v0_0_6";
  inputs."zfplugs-v0_0_7".url = "path:./v0_0_7";
  inputs."zfplugs-v0_1_10".url = "path:./v0_1_10";
  inputs."zfplugs-v0_1_11".url = "path:./v0_1_11";
  inputs."zfplugs-v0_1_5".url = "path:./v0_1_5";
  inputs."zfplugs-v0_1_6".url = "path:./v0_1_6";
  inputs."zfplugs-v0_1_7".url = "path:./v0_1_7";
  inputs."zfplugs-v0_1_8".url = "path:./v0_1_8";
  inputs."zfplugs-v0_1_9".url = "path:./v0_1_9";
  inputs."zfplugs-v1_1_8".url = "path:./v1_1_8";
  outputs = { self, nixpkgs, ...}@inputs:
    let lib = import ./lib.nix;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}