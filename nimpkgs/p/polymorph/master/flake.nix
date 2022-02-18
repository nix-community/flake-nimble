{
  description = ''An entity-component-system with a focus on compile time optimisation'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-polymorph-master.flake = false;
  inputs.src-polymorph-master.type = "github";
  inputs.src-polymorph-master.owner = "rlipsc";
  inputs.src-polymorph-master.repo = "polymorph";
  inputs.src-polymorph-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-polymorph-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-polymorph-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-polymorph-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}