{
  description = ''Pointer arithmetic library'';
  inputs."ptr_math-main".url = "path:./main";
  inputs."ptr_math-v0_0_1".url = "path:./v0_0_1";
  inputs."ptr_math-v0_2_0".url = "path:./v0_2_0";
  inputs."ptr_math-v0_3_0".url = "path:./v0_3_0";
  outputs = { self, nixpkgs, ...}@inputs:
    let lib = import ./lib.nix;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}