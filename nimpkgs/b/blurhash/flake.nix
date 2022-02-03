{
  description = ''Encoder/decoder for blurhash algorithm'';
  inputs."blurhash-master".url = "path:./master";
  inputs."blurhash-v0_1_0".url = "path:./v0_1_0";
  inputs."blurhash-v0_2_0".url = "path:./v0_2_0";
  inputs."blurhash-v0_2_1".url = "path:./v0_2_1";
  outputs = { self, nixpkgs, ...}@inputs:
    let lib = import ./lib.nix;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}