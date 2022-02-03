{
  description = ''gnuplot interface'';
  inputs.src-gnuplotlib-main.flake = false;
  inputs.src-gnuplotlib-main.type = "github";
  inputs.src-gnuplotlib-main.owner = "planetis-m";
  inputs.src-gnuplotlib-main.repo = "gnuplotlib";
  inputs.src-gnuplotlib-main.ref = "refs/heads/main";
  
  outputs = { self, nixpkgs, src-gnuplotlib-main, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-gnuplotlib-main;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-gnuplotlib-main"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}