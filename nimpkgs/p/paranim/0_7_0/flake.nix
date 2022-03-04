{
  description = ''A game library'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-paranim-0_7_0.flake = false;
  inputs.src-paranim-0_7_0.type = "github";
  inputs.src-paranim-0_7_0.owner = "paranim";
  inputs.src-paranim-0_7_0.repo = "paranim";
  inputs.src-paranim-0_7_0.ref = "refs/tags/0.7.0";
  inputs.src-paranim-0_7_0.inputs.nixpkgs.follows = "nixpkgs";
  
  
  inputs."nimgl".type = "github";
  inputs."nimgl".owner = "riinr";
  inputs."nimgl".repo = "flake-nimble";
  inputs."nimgl".ref = "flake-pinning";
  inputs."nimgl".dir = "nimpkgs/n/nimgl";
  inputs."nimgl".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimgl".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  
  inputs."glm".type = "github";
  inputs."glm".owner = "riinr";
  inputs."glm".repo = "flake-nimble";
  inputs."glm".ref = "flake-pinning";
  inputs."glm".dir = "nimpkgs/g/glm";
  inputs."glm".inputs.nixpkgs.follows = "nixpkgs";
  inputs."glm".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  outputs = { self, nixpkgs, flakeNimbleLib, src-paranim-0_7_0, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-paranim-0_7_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-paranim-0_7_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}