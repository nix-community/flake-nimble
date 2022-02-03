{
  description = ''Mustache in Nim'';
  inputs."mustache-master".url = "path:./master";
  inputs."mustache-v0_1_0".url = "path:./v0_1_0";
  inputs."mustache-v0_2_0".url = "path:./v0_2_0";
  inputs."mustache-v0_2_1".url = "path:./v0_2_1";
  inputs."mustache-v0_2_2".url = "path:./v0_2_2";
  inputs."mustache-v0_3_0".url = "path:./v0_3_0";
  inputs."mustache-v0_3_1".url = "path:./v0_3_1";
  inputs."mustache-v0_3_2".url = "path:./v0_3_2";
  inputs."mustache-v0_4_0".url = "path:./v0_4_0";
  inputs."mustache-v0_4_1".url = "path:./v0_4_1";
  inputs."mustache-v0_4_2".url = "path:./v0_4_2";
  inputs."mustache-v0_4_3".url = "path:./v0_4_3";
  outputs = { self, nixpkgs, ...}@inputs:
    let lib = import ./lib.nix;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}