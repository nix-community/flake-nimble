{
  description = ''gyaric is a module to encode/decode text to unreadable gyaru's text.'';
  inputs."gyaric-master".url = "path:./master";
  inputs."gyaric-v1_0_0".url = "path:./v1_0_0";
  inputs."gyaric-v1_0_1".url = "path:./v1_0_1";
  inputs."gyaric-v1_0_2".url = "path:./v1_0_2";
  outputs = { self, nixpkgs, ...}@inputs:
    let lib = import ./lib.nix;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}