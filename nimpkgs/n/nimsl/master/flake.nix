{
  description = ''Shaders in Nim.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  inputs.src-nimsl-master.flake = false;
  inputs.src-nimsl-master.type = "github";
  inputs.src-nimsl-master.owner = "yglukhov";
  inputs.src-nimsl-master.repo = "nimsl";
  inputs.src-nimsl-master.ref = "refs/heads/master";
  inputs.src-nimsl-master.inputs.nixpkgs.follows = "nixpkgs";
  
  
  # inputs."variant".type = "github";
  # inputs."variant".owner = "riinr";
  # inputs."variant".repo = "flake-nimble";
  # inputs."variant".ref = "flake-pinning";
  # inputs."variant".dir = "nimpkgs/v/variant";
  # inputs."variant".inputs.nixpkgs.follows = "nixpkgs";
  # inputs."variant".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  outputs = { self, nixpkgs, flakeNimbleLib, src-nimsl-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nimsl-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-nimsl-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}