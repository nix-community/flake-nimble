{
  description = ''Binary parser/encoder DSL'';
  inputs."binarylang-main".url = "path:./main";
  inputs."binarylang-v0_2_0".url = "path:./v0_2_0";
  inputs."binarylang-v0_3_0".url = "path:./v0_3_0";
  inputs."binarylang-v0_3_1".url = "path:./v0_3_1";
  inputs."binarylang-v0_3_2".url = "path:./v0_3_2";
  inputs."binarylang-v0_5_0".url = "path:./v0_5_0";
  inputs."binarylang-v0_5_1".url = "path:./v0_5_1";
  outputs = { self, nixpkgs, ...}@inputs:
    let lib = import ./lib.nix;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}