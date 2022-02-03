{
  description = ''A parser for Jupyter notebooks.'';
  inputs."holst-main".url = "path:./main";
  inputs."holst-0_1_0".url = "path:./0_1_0";
  inputs."holst-0_1_1".url = "path:./0_1_1";
  inputs."holst-0_1_2".url = "path:./0_1_2";
  inputs."holst-0_1_3".url = "path:./0_1_3";
  inputs."holst-0_1_4".url = "path:./0_1_4";
  inputs."holst-0_1_5".url = "path:./0_1_5";
  outputs = { self, nixpkgs, ...}@inputs:
    let lib = import ./lib.nix;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}