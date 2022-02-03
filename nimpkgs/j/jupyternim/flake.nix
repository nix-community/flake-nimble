{
  description = ''A Jupyter kernel for nim.'';
  inputs."jupyternim-master".url = "path:./master";
  inputs."jupyternim-0_1_1".url = "path:./0_1_1";
  inputs."jupyternim-0_2_0".url = "path:./0_2_0";
  inputs."jupyternim-0_4_1".url = "path:./0_4_1";
  inputs."jupyternim-0_4_2".url = "path:./0_4_2";
  inputs."jupyternim-0_5_0".url = "path:./0_5_0";
  inputs."jupyternim-0_5_1".url = "path:./0_5_1";
  inputs."jupyternim-0_5_2".url = "path:./0_5_2";
  inputs."jupyternim-0_5_3".url = "path:./0_5_3";
  inputs."jupyternim-0_5_4".url = "path:./0_5_4";
  inputs."jupyternim-0_5_5".url = "path:./0_5_5";
  inputs."jupyternim-0_5_7".url = "path:./0_5_7";
  inputs."jupyternim-0_5_8".url = "path:./0_5_8";
  inputs."jupyternim-0_6_0".url = "path:./0_6_0";
  inputs."jupyternim-0_6_1".url = "path:./0_6_1";
  inputs."jupyternim-0_6_2".url = "path:./0_6_2";
  inputs."jupyternim-0_6_3".url = "path:./0_6_3";
  inputs."jupyternim-0_7_0".url = "path:./0_7_0";
  inputs."jupyternim-v0_3_0".url = "path:./v0_3_0";
  inputs."jupyternim-v0_4_0".url = "path:./v0_4_0";
  inputs."jupyternim-v0_4_1".url = "path:./v0_4_1";
  outputs = { self, nixpkgs, ...}@inputs:
    let lib = import ./lib.nix;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}