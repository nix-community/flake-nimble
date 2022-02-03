{
  description = ''Concise Binary Object Representation decoder (RFC7049).'';
  inputs."cbor-master".url = "path:./master";
  inputs."cbor-staging".url = "path:./staging";
  inputs."cbor-0_5_0".url = "path:./0_5_0";
  inputs."cbor-v0_1_0".url = "path:./v0_1_0";
  inputs."cbor-v0_2_0".url = "path:./v0_2_0";
  inputs."cbor-v0_3_0".url = "path:./v0_3_0";
  inputs."cbor-v0_4_0".url = "path:./v0_4_0";
  inputs."cbor-v0_4_1".url = "path:./v0_4_1";
  inputs."cbor-v0_5_1".url = "path:./v0_5_1";
  inputs."cbor-v0_5_2".url = "path:./v0_5_2";
  inputs."cbor-v0_6_0".url = "path:./v0_6_0";
  inputs."cbor-v0_7_0".url = "path:./v0_7_0";
  inputs."cbor-v0_8_0".url = "path:./v0_8_0";
  inputs."cbor-v0_8_1".url = "path:./v0_8_1";
  outputs = { self, nixpkgs, ...}@inputs:
    let lib = import ./lib.nix;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}