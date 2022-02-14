{
  description = ''An entity-component-system with a focus on compile time optimisation'';
  inputs.src-polymorph-master.flake = false;
  inputs.src-polymorph-master.type = "github";
  inputs.src-polymorph-master.owner = "rlipsc";
  inputs.src-polymorph-master.repo = "polymorph";
  inputs.src-polymorph-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-polymorph-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-polymorph-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-polymorph-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}