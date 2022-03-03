{
  description = ''A game library'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-paranim-master.flake = false;
  inputs.src-paranim-master.type = "github";
  inputs.src-paranim-master.owner = "paranim";
  inputs.src-paranim-master.repo = "paranim";
  inputs.src-paranim-master.ref = "refs/heads/master";
  inputs.src-paranim-master.inputs.nixpkgs.follows = "nixpkgs";
  
  
  # inputs."nimgl".type = "github";
  # inputs."nimgl".owner = "riinr";
  # inputs."nimgl".repo = "flake-nimble";
  # inputs."nimgl".ref = "flake-pinning";
  # inputs."nimgl".dir = "nimpkgs/n/nimgl";
  # inputs."nimgl".inputs.nixpkgs.follows = "nixpkgs";
  # inputs."nimgl".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  
  # inputs."glm".type = "github";
  # inputs."glm".owner = "riinr";
  # inputs."glm".repo = "flake-nimble";
  # inputs."glm".ref = "flake-pinning";
  # inputs."glm".dir = "nimpkgs/g/glm";
  # inputs."glm".inputs.nixpkgs.follows = "nixpkgs";
  # inputs."glm".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  outputs = { self, nixpkgs, flakeNimbleLib, src-paranim-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-paranim-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-paranim-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}