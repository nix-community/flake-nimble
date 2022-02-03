{
  description = ''Arduino bindings for Nim'';
  inputs."arduino-main".url = "path:./main";
  inputs."arduino-0_2_0".url = "path:./0_2_0";
  inputs."arduino-0_3_0".url = "path:./0_3_0";
  outputs = { self, nixpkgs, ...}@inputs:
    let lib = import ./lib.nix;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}