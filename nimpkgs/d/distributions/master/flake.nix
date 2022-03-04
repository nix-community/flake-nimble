{
  description = ''Distributions is a Nim library for distributions and their functions.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-distributions-master.flake = false;
  inputs.src-distributions-master.type = "github";
  inputs.src-distributions-master.owner = "ayman-albaz";
  inputs.src-distributions-master.repo = "distributions";
  inputs.src-distributions-master.ref = "refs/heads/master";
  inputs.src-distributions-master.inputs.nixpkgs.follows = "nixpkgs";
  
  
  inputs."special_functions".type = "github";
  inputs."special_functions".owner = "riinr";
  inputs."special_functions".repo = "flake-nimble";
  inputs."special_functions".ref = "flake-pinning";
  inputs."special_functions".dir = "nimpkgs/s/special_functions";
  inputs."special_functions".inputs.nixpkgs.follows = "nixpkgs";
  inputs."special_functions".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  outputs = { self, nixpkgs, flakeNimbleLib, src-distributions-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-distributions-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-distributions-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}