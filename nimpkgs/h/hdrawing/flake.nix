{
  description = ''Simple shape drawing'';
  inputs."hdrawing-master".url = "path:./master";
  inputs."hdrawing-0_1_1".url = "path:./0_1_1";
  inputs."hdrawing-0_1_2".url = "path:./0_1_2";
  inputs."hdrawing-0_1_3".url = "path:./0_1_3";
  outputs = { self, nixpkgs, ...}@inputs:
    let lib = import ./lib.nix;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}