{
  description = ''Nim package to manipulate buffer as either seq[byte] or string'';
  inputs."bytesequtils-main".url = "path:./main";
  inputs."bytesequtils-v1_0_0".url = "path:./v1_0_0";
  inputs."bytesequtils-v1_1_0".url = "path:./v1_1_0";
  inputs."bytesequtils-v1_1_1".url = "path:./v1_1_1";
  inputs."bytesequtils-v1_1_2".url = "path:./v1_1_2";
  inputs."bytesequtils-v1_1_3".url = "path:./v1_1_3";
  inputs."bytesequtils-v1_2_0".url = "path:./v1_2_0";
  outputs = { self, nixpkgs, ...}@inputs:
    let lib = import ./lib.nix;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}