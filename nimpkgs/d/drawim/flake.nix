{
  description = ''Simple library to draw stuff on a window'';
  inputs."drawim-master".url = "path:./master";
  inputs."drawim-0_1_0".url = "path:./0_1_0";
  inputs."drawim-0_1_1".url = "path:./0_1_1";
  inputs."drawim-0_1_2".url = "path:./0_1_2";
  inputs."drawim-0_1_3".url = "path:./0_1_3";
  outputs = { self, nixpkgs, ...}@inputs:
    let lib = import ./lib.nix;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}