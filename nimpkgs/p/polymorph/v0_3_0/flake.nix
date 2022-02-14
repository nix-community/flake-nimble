{
  description = ''An entity-component-system with a focus on compile time optimisation'';
  inputs.src-polymorph-v0_3_0.flake = false;
  inputs.src-polymorph-v0_3_0.type = "github";
  inputs.src-polymorph-v0_3_0.owner = "rlipsc";
  inputs.src-polymorph-v0_3_0.repo = "polymorph";
  inputs.src-polymorph-v0_3_0.ref = "refs/tags/v0.3.0";
  
  outputs = { self, nixpkgs, src-polymorph-v0_3_0, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-polymorph-v0_3_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-polymorph-v0_3_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}