{
  description = ''libsodium wrapper'';
  inputs."libsodium-master".url = "path:./master";
  inputs."libsodium-0_2_2".url = "path:./0_2_2";
  inputs."libsodium-0_3_0".url = "path:./0_3_0";
  inputs."libsodium-0_4_0".url = "path:./0_4_0";
  inputs."libsodium-0_4_1".url = "path:./0_4_1";
  inputs."libsodium-0_4_2".url = "path:./0_4_2";
  inputs."libsodium-0_5_0".url = "path:./0_5_0";
  inputs."libsodium-0_6_0".url = "path:./0_6_0";
  inputs."libsodium-0_7_0".url = "path:./0_7_0";
  inputs."libsodium-0_7_1".url = "path:./0_7_1";
  outputs = { self, nixpkgs, ...}@inputs:
    let lib = import ./lib.nix;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}