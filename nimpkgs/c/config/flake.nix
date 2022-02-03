{
  description = ''A library for working with the CFG configuration format'';
  inputs."config-main".url = "path:./main";
  inputs."config-0_1_0".url = "path:./0_1_0";
  inputs."config-0_1_1".url = "path:./0_1_1";
  outputs = { self, nixpkgs, ...}@inputs:
    let lib = import ./lib.nix;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}