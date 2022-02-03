{
  description = ''Nim wrappers for ESP-IDF (ESP32)'';
  inputs."nesper-master".url = "path:./master";
  inputs."nesper-0_5_0".url = "path:./0_5_0";
  inputs."nesper-v0_2_0".url = "path:./v0_2_0";
  inputs."nesper-v0_3_0".url = "path:./v0_3_0";
  inputs."nesper-v0_4_0".url = "path:./v0_4_0";
  inputs."nesper-v0_4_1".url = "path:./v0_4_1";
  inputs."nesper-v0_6_0".url = "path:./v0_6_0";
  outputs = { self, nixpkgs, ...}@inputs:
    let lib = import ./lib.nix;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}