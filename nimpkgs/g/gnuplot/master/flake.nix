{
  description = ''Nim interface to gnuplot'';
  inputs.src-gnuplot-master.flake = false;
  inputs.src-gnuplot-master.type = "github";
  inputs.src-gnuplot-master.owner = "dvolk";
  inputs.src-gnuplot-master.repo = "gnuplot.nim";
  inputs.src-gnuplot-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-gnuplot-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-gnuplot-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-gnuplot-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}