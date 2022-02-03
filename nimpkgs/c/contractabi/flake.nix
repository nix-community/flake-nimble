{
  description = ''ABI Encoding for Ethereum contracts'';
  inputs."contractabi-main".url = "path:./main";
  inputs."contractabi-0_1_0".url = "path:./0_1_0";
  inputs."contractabi-0_1_1".url = "path:./0_1_1";
  inputs."contractabi-0_2_0".url = "path:./0_2_0";
  inputs."contractabi-0_3_0".url = "path:./0_3_0";
  inputs."contractabi-0_4_0".url = "path:./0_4_0";
  inputs."contractabi-0_4_1".url = "path:./0_4_1";
  outputs = { self, nixpkgs, ...}@inputs:
    let lib = import ./lib.nix;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}