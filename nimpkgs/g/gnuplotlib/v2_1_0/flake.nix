{
  description = ''gnuplot interface'';
  inputs.src-gnuplotlib-v2_1_0.flake = false;
  inputs.src-gnuplotlib-v2_1_0.type = "github";
  inputs.src-gnuplotlib-v2_1_0.owner = "planetis-m";
  inputs.src-gnuplotlib-v2_1_0.repo = "gnuplotlib";
  inputs.src-gnuplotlib-v2_1_0.ref = "refs/tags/v2.1.0";
  
  outputs = { self, nixpkgs, src-gnuplotlib-v2_1_0, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-gnuplotlib-v2_1_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-gnuplotlib-v2_1_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}