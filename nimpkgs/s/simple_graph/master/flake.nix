{
  description = ''Simple Graph Library'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-simple_graph-master.flake = false;
  inputs.src-simple_graph-master.type = "github";
  inputs.src-simple_graph-master.owner = "erhlee-bird";
  inputs.src-simple_graph-master.repo = "simple_graph";
  inputs.src-simple_graph-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-simple_graph-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-simple_graph-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-simple_graph-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}