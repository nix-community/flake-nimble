{
  description = ''Engine-agnostic library for computing 2D raycasted lights'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  inputs.src-delight-0_1_0.flake = false;
  inputs.src-delight-0_1_0.type = "github";
  inputs.src-delight-0_1_0.owner = "liquid600pgm";
  inputs.src-delight-0_1_0.repo = "delight";
  inputs.src-delight-0_1_0.ref = "refs/tags/0.1.0";
  inputs.src-delight-0_1_0.inputs.nixpkgs.follows = "nixpkgs";
  
  
  # inputs."glm".type = "github";
  # inputs."glm".owner = "riinr";
  # inputs."glm".repo = "flake-nimble";
  # inputs."glm".ref = "flake-pinning";
  # inputs."glm".dir = "nimpkgs/g/glm";
  # inputs."glm".inputs.nixpkgs.follows = "nixpkgs";
  # inputs."glm".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  outputs = { self, nixpkgs, flakeNimbleLib, src-delight-0_1_0, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-delight-0_1_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-delight-0_1_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}