{
  description = ''Lexer Generator and Parser Generator as a Macro Library in Nim.'';
  inputs."nimly-master".url = "path:./master";
  inputs."nimly-v0_0_0".url = "path:./v0_0_0";
  inputs."nimly-v0_1_0".url = "path:./v0_1_0";
  inputs."nimly-v0_2_0".url = "path:./v0_2_0";
  inputs."nimly-v0_2_1".url = "path:./v0_2_1";
  inputs."nimly-v0_3_0".url = "path:./v0_3_0";
  inputs."nimly-v0_4_0".url = "path:./v0_4_0";
  inputs."nimly-v0_4_1".url = "path:./v0_4_1";
  inputs."nimly-v0_4_2".url = "path:./v0_4_2";
  inputs."nimly-v0_5_0".url = "path:./v0_5_0";
  inputs."nimly-v0_5_1".url = "path:./v0_5_1";
  inputs."nimly-v0_6_0".url = "path:./v0_6_0";
  inputs."nimly-v0_6_1".url = "path:./v0_6_1";
  inputs."nimly-v0_7_0".url = "path:./v0_7_0";
  outputs = { self, nixpkgs, ...}@inputs:
    let lib = import ./lib.nix;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}