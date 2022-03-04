{
  description = ''Generalized linear models in Nim.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-linear_models-master.flake = false;
  inputs.src-linear_models-master.type = "github";
  inputs.src-linear_models-master.owner = "ayman-albaz";
  inputs.src-linear_models-master.repo = "linear-models";
  inputs.src-linear_models-master.ref = "refs/heads/master";
  inputs.src-linear_models-master.inputs.nixpkgs.follows = "nixpkgs";
  
  
  inputs."arraymancer".type = "github";
  inputs."arraymancer".owner = "riinr";
  inputs."arraymancer".repo = "flake-nimble";
  inputs."arraymancer".ref = "flake-pinning";
  inputs."arraymancer".dir = "nimpkgs/a/arraymancer";
  inputs."arraymancer".inputs.nixpkgs.follows = "nixpkgs";
  inputs."arraymancer".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  
  inputs."distributions".type = "github";
  inputs."distributions".owner = "riinr";
  inputs."distributions".repo = "flake-nimble";
  inputs."distributions".ref = "flake-pinning";
  inputs."distributions".dir = "nimpkgs/d/distributions";
  inputs."distributions".inputs.nixpkgs.follows = "nixpkgs";
  inputs."distributions".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  outputs = { self, nixpkgs, flakeNimbleLib, src-linear_models-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-linear_models-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-linear_models-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}