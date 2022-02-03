{
  description = ''High performance http server (https://tools.ietf.org/html/rfc2616) with persistent connection for nim language.'';
  inputs."zfblast-master".url = "path:./master";
  inputs."zfblast-0_1_19".url = "path:./0_1_19";
  inputs."zfblast-v0_1_0".url = "path:./v0_1_0";
  inputs."zfblast-v0_1_1".url = "path:./v0_1_1";
  inputs."zfblast-v0_1_10".url = "path:./v0_1_10";
  inputs."zfblast-v0_1_14".url = "path:./v0_1_14";
  inputs."zfblast-v0_1_16".url = "path:./v0_1_16";
  inputs."zfblast-v0_1_17".url = "path:./v0_1_17";
  inputs."zfblast-v0_1_17-old".url = "path:./v0_1_17-old";
  inputs."zfblast-v0_1_19".url = "path:./v0_1_19";
  inputs."zfblast-v0_1_2".url = "path:./v0_1_2";
  inputs."zfblast-v0_1_3".url = "path:./v0_1_3";
  inputs."zfblast-v0_1_4".url = "path:./v0_1_4";
  inputs."zfblast-v0_1_5".url = "path:./v0_1_5";
  inputs."zfblast-v0_1_6".url = "path:./v0_1_6";
  inputs."zfblast-v0_1_6-stable".url = "path:./v0_1_6-stable";
  inputs."zfblast-v0_1_7".url = "path:./v0_1_7";
  inputs."zfblast-v0_2_2".url = "path:./v0_2_2";
  inputs."zfblast-v0_2_3".url = "path:./v0_2_3";
  inputs."zfblast-v0_2_3-beta".url = "path:./v0_2_3-beta";
  inputs."zfblast-v0_2_4".url = "path:./v0_2_4";
  outputs = { self, nixpkgs, ...}@inputs:
    let lib = import ./lib.nix;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}