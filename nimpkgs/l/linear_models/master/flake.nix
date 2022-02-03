{
  description = ''Generalized linear models in Nim.'';
  inputs.src-linear_models-master.flake = false;
  inputs.src-linear_models-master.type = "github";
  inputs.src-linear_models-master.owner = "ayman-albaz";
  inputs.src-linear_models-master.repo = "linear-models";
  inputs.src-linear_models-master.ref = "refs/heads/master";
  
  
  inputs."arraymancer".url = "path:../../../a/arraymancer";
  inputs."arraymancer".type = "github";
  inputs."arraymancer".owner = "riinr";
  inputs."arraymancer".repo = "flake-nimble";
  inputs."arraymancer".ref = "flake-pinning";
  inputs."arraymancer".dir = "nimpkgs/a/arraymancer";

  
  inputs."distributions".url = "path:../../../d/distributions";
  inputs."distributions".type = "github";
  inputs."distributions".owner = "riinr";
  inputs."distributions".repo = "flake-nimble";
  inputs."distributions".ref = "flake-pinning";
  inputs."distributions".dir = "nimpkgs/d/distributions";

  outputs = { self, nixpkgs, src-linear_models-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-linear_models-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-linear_models-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}