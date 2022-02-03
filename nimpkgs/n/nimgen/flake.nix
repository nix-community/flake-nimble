{
  description = ''C2nim helper to simplify and automate wrapping C libraries'';
  inputs."nimgen-master".url = "path:./master";
  inputs."nimgen-v0_1_0".url = "path:./v0_1_0";
  inputs."nimgen-v0_1_1".url = "path:./v0_1_1";
  inputs."nimgen-v0_1_2".url = "path:./v0_1_2";
  inputs."nimgen-v0_1_3".url = "path:./v0_1_3";
  inputs."nimgen-v0_1_4".url = "path:./v0_1_4";
  inputs."nimgen-v0_1_5".url = "path:./v0_1_5";
  inputs."nimgen-v0_2_0".url = "path:./v0_2_0";
  inputs."nimgen-v0_2_2".url = "path:./v0_2_2";
  inputs."nimgen-v0_2_3".url = "path:./v0_2_3";
  inputs."nimgen-v0_3_0".url = "path:./v0_3_0";
  inputs."nimgen-v0_3_1".url = "path:./v0_3_1";
  inputs."nimgen-v0_4_0".url = "path:./v0_4_0";
  inputs."nimgen-v0_5_0".url = "path:./v0_5_0";
  inputs."nimgen-v0_5_1".url = "path:./v0_5_1";
  outputs = { self, nixpkgs, ...}@inputs:
    let lib = import ./lib.nix;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}