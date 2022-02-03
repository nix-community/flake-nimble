{
  description = ''Red/Black Trees'';
  inputs."rbtree-master".url = "path:./master";
  inputs."rbtree-0_1_0".url = "path:./0_1_0";
  inputs."rbtree-0_2_0".url = "path:./0_2_0";
  inputs."rbtree-0_3_0".url = "path:./0_3_0";
  inputs."rbtree-0_4_0".url = "path:./0_4_0";
  inputs."rbtree-0_5_0".url = "path:./0_5_0";
  outputs = { self, nixpkgs, ...}@inputs:
    let lib = import ./lib.nix;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}