{
  description = ''Provides a small command line parsing DSL (domain specific language)'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-commandeer-master.flake = false;
  inputs.src-commandeer-master.type = "github";
  inputs.src-commandeer-master.owner = "fenekku";
  inputs.src-commandeer-master.repo = "commandeer";
  inputs.src-commandeer-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-commandeer-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-commandeer-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-commandeer-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}