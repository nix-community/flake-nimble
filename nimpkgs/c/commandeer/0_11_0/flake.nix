{
  description = ''Provides a small command line parsing DSL (domain specific language)'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-commandeer-0_11_0.flake = false;
  inputs.src-commandeer-0_11_0.type = "github";
  inputs.src-commandeer-0_11_0.owner = "fenekku";
  inputs.src-commandeer-0_11_0.repo = "commandeer";
  inputs.src-commandeer-0_11_0.ref = "refs/tags/0.11.0";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-commandeer-0_11_0, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-commandeer-0_11_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-commandeer-0_11_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}