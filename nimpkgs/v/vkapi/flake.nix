{
  description = ''A wrapper for the vk.com API (russian social network)'';
  inputs."vkapi-master".url = "path:./master";
  inputs."vkapi-v0_1_0".url = "path:./v0_1_0";
  inputs."vkapi-v1_0_0".url = "path:./v1_0_0";
  inputs."vkapi-v1_1_0".url = "path:./v1_1_0";
  inputs."vkapi-v1_2_0".url = "path:./v1_2_0";
  inputs."vkapi-v1_2_1".url = "path:./v1_2_1";
  inputs."vkapi-v1_3_0".url = "path:./v1_3_0";
  inputs."vkapi-v1_3_1".url = "path:./v1_3_1";
  outputs = { self, nixpkgs, ...}@inputs:
    let lib = import ./lib.nix;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}