{
  description = ''A blog post generator for people with priorities.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  inputs.src-jeknil-v0_1_1.flake = false;
  inputs.src-jeknil-v0_1_1.type = "github";
  inputs.src-jeknil-v0_1_1.owner = "tonogram";
  inputs.src-jeknil-v0_1_1.repo = "jeknil";
  inputs.src-jeknil-v0_1_1.ref = "refs/tags/v0.1.1";
  inputs.src-jeknil-v0_1_1.inputs.nixpkgs.follows = "nixpkgs";
  
  
  # inputs."markdown".type = "github";
  # inputs."markdown".owner = "riinr";
  # inputs."markdown".repo = "flake-nimble";
  # inputs."markdown".ref = "flake-pinning";
  # inputs."markdown".dir = "nimpkgs/m/markdown";
  # inputs."markdown".inputs.nixpkgs.follows = "nixpkgs";
  # inputs."markdown".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  outputs = { self, nixpkgs, flakeNimbleLib, src-jeknil-v0_1_1, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-jeknil-v0_1_1;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-jeknil-v0_1_1"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}