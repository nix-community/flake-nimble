{
  description = ''Useful synchronization primitives'';
  inputs."sync-master".url = "path:./master";
  inputs."sync-v0_1_0".url = "path:./v0_1_0";
  inputs."sync-v0_2_0".url = "path:./v0_2_0";
  inputs."sync-v0_3_0".url = "path:./v0_3_0";
  inputs."sync-v0_4_0".url = "path:./v0_4_0";
  inputs."sync-v0_5_0".url = "path:./v0_5_0";
  inputs."sync-v0_6_0".url = "path:./v0_6_0";
  inputs."sync-v0_7_0".url = "path:./v0_7_0";
  inputs."sync-v0_9_0".url = "path:./v0_9_0";
  inputs."sync-v1_0_0".url = "path:./v1_0_0";
  inputs."sync-v1_1_0".url = "path:./v1_1_0";
  inputs."sync-v1_2_0".url = "path:./v1_2_0";
  inputs."sync-v1_3_0".url = "path:./v1_3_0";
  inputs."sync-v1_4_0".url = "path:./v1_4_0";
  inputs."sync-v1_5_0".url = "path:./v1_5_0";
  outputs = { self, nixpkgs, ...}@inputs:
    let lib = import ./lib.nix;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}