{
  description = ''Variant type and type matching'';
  inputs."variant-master".url = "path:./master";
  inputs."variant-v0_2".url = "path:./v0_2";
  inputs."variant-v0_2_1".url = "path:./v0_2_1";
  inputs."variant-v0_2_10".url = "path:./v0_2_10";
  inputs."variant-v0_2_11".url = "path:./v0_2_11";
  inputs."variant-v0_2_2".url = "path:./v0_2_2";
  inputs."variant-v0_2_3".url = "path:./v0_2_3";
  inputs."variant-v0_2_4".url = "path:./v0_2_4";
  inputs."variant-v0_2_5".url = "path:./v0_2_5";
  inputs."variant-v0_2_6".url = "path:./v0_2_6";
  inputs."variant-v0_2_7".url = "path:./v0_2_7";
  inputs."variant-v0_2_8".url = "path:./v0_2_8";
  inputs."variant-v0_2_9".url = "path:./v0_2_9";
  outputs = { self, nixpkgs, ...}@inputs:
    let lib = import ./lib.nix;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}