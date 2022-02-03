{
  description = ''nimib 🐳 - nim 👑 driven ⛵ publishing ✍'';
  inputs."nimib-main".url = "path:./main";
  inputs."nimib-v0_1".url = "path:./v0_1";
  inputs."nimib-v0_1_1".url = "path:./v0_1_1";
  inputs."nimib-v0_1_2".url = "path:./v0_1_2";
  inputs."nimib-v0_1_3".url = "path:./v0_1_3";
  inputs."nimib-v0_1_4".url = "path:./v0_1_4";
  inputs."nimib-v0_1_5".url = "path:./v0_1_5";
  inputs."nimib-v0_1_6".url = "path:./v0_1_6";
  inputs."nimib-v0_2_0".url = "path:./v0_2_0";
  inputs."nimib-v0_2_1".url = "path:./v0_2_1";
  inputs."nimib-v0_2_2".url = "path:./v0_2_2";
  inputs."nimib-v0_2_3".url = "path:./v0_2_3";
  inputs."nimib-v0_2_4".url = "path:./v0_2_4";
  outputs = { self, nixpkgs, ...}@inputs:
    let lib = import ./lib.nix;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}