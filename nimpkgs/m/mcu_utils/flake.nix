{
  description = ''Utilities and simple helpers for programming with Nim on embedded MCU devices'';
  inputs."mcu_utils-main".url = "path:./main";
  inputs."mcu_utils-v0_1_0".url = "path:./v0_1_0";
  outputs = { self, nixpkgs, ...}@inputs:
    let lib = import ./lib.nix;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}