{
  description = ''Wrapper for SystemVerilog VPI headers vpi_user.h and sv_vpi_user.h'';
  inputs."svvpi-main".url = "path:./main";
  inputs."svvpi-v0_0_1".url = "path:./v0_0_1";
  inputs."svvpi-v0_0_2".url = "path:./v0_0_2";
  inputs."svvpi-v0_0_3".url = "path:./v0_0_3";
  inputs."svvpi-v0_0_4".url = "path:./v0_0_4";
  inputs."svvpi-v0_0_5".url = "path:./v0_0_5";
  inputs."svvpi-v0_0_6".url = "path:./v0_0_6";
  outputs = { self, nixpkgs, ...}@inputs:
    let lib = import ./lib.nix;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}