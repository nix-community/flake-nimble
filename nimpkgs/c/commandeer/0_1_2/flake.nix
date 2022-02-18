{
  description = ''Provides a small command line parsing DSL (domain specific language)'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-commandeer-0_1_2.flake = false;
  inputs.src-commandeer-0_1_2.type = "github";
  inputs.src-commandeer-0_1_2.owner = "fenekku";
  inputs.src-commandeer-0_1_2.repo = "commandeer";
  inputs.src-commandeer-0_1_2.ref = "refs/tags/0.1.2";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-commandeer-0_1_2, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-commandeer-0_1_2;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-commandeer-0_1_2"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}