{
  description = ''Graph data structure library'';
  inputs.src-patgraph-master.flake = false;
  inputs.src-patgraph-master.type = "github";
  inputs.src-patgraph-master.owner = "planetis-m";
  inputs.src-patgraph-master.repo = "patgraph";
  inputs.src-patgraph-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-patgraph-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-patgraph-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-patgraph-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}