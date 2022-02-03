{
  description = ''gnuplot interface'';
  inputs."gnuplotlib-main".url = "path:./main";
  inputs."gnuplotlib-v1_0_0".url = "path:./v1_0_0";
  inputs."gnuplotlib-v2_0_0".url = "path:./v2_0_0";
  inputs."gnuplotlib-v2_1_0".url = "path:./v2_1_0";
  inputs."gnuplotlib-v2_5_0".url = "path:./v2_5_0";
  inputs."gnuplotlib-v2_6_1".url = "path:./v2_6_1";
  outputs = { self, nixpkgs, ...}@inputs:
    let lib = import ./lib.nix;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}