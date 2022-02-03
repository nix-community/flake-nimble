{
  description = ''Indie assembler/linker for Android's Dalvik VM .dex & .apk files'';
  inputs."dali-master".url = "path:./master";
  inputs."dali-v0_1_0".url = "path:./v0_1_0";
  inputs."dali-v0_2_0".url = "path:./v0_2_0";
  inputs."dali-v0_2_1".url = "path:./v0_2_1";
  inputs."dali-v0_2_2".url = "path:./v0_2_2";
  inputs."dali-v0_2_3".url = "path:./v0_2_3";
  inputs."dali-v0_3_0".url = "path:./v0_3_0";
  inputs."dali-v0_4_0".url = "path:./v0_4_0";
  outputs = { self, nixpkgs, ...}@inputs:
    let lib = import ./lib.nix;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}