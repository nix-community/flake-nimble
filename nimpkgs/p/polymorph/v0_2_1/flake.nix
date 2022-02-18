{
  description = ''An entity-component-system with a focus on compile time optimisation'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-Polymorph-v0_2_1.flake = false;
  inputs.src-Polymorph-v0_2_1.type = "github";
  inputs.src-Polymorph-v0_2_1.owner = "rlipsc";
  inputs.src-Polymorph-v0_2_1.repo = "polymorph";
  inputs.src-Polymorph-v0_2_1.ref = "refs/tags/v0.2.1";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-polymorph-v0_2_1, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-polymorph-v0_2_1;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-polymorph-v0_2_1"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}