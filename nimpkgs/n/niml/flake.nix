{
  description = ''html dsl'';
  inputs."niml-main".url = "path:./main";
  inputs."niml-0_1_0".url = "path:./0_1_0";
  inputs."niml-0_1_1".url = "path:./0_1_1";
  inputs."niml-0_1_2".url = "path:./0_1_2";
  inputs."niml-0_1_3".url = "path:./0_1_3";
  inputs."niml-0_1_4".url = "path:./0_1_4";
  inputs."niml-0_1_5".url = "path:./0_1_5";
  inputs."niml-0_2_0".url = "path:./0_2_0";
  inputs."niml-0_2_1".url = "path:./0_2_1";
  inputs."niml-0_2_2".url = "path:./0_2_2";
  inputs."niml-0_2_3".url = "path:./0_2_3";
  outputs = { self, nixpkgs, ...}@inputs:
    let lib = import ./lib.nix;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}