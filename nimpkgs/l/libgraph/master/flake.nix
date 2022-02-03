{
  description = ''Converts 2D linear graph coordinates to pixels on screen'';
  inputs.src-libgraph-master.flake = false;
  inputs.src-libgraph-master.type = "github";
  inputs.src-libgraph-master.owner = "Mnenmenth";
  inputs.src-libgraph-master.repo = "libgraphnim";
  inputs.src-libgraph-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-libgraph-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-libgraph-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-libgraph-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}