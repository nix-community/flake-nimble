{
  description = ''A teminal othello (reversi) in Nim.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-nimothello-v1_0_0.flake = false;
  inputs.src-nimothello-v1_0_0.type = "github";
  inputs.src-nimothello-v1_0_0.owner = "jiro4989";
  inputs.src-nimothello-v1_0_0.repo = "nimothello";
  inputs.src-nimothello-v1_0_0.ref = "refs/tags/v1.0.0";
  inputs.src-nimothello-v1_0_0.inputs.nixpkgs.follows = "nixpkgs";
  
  
  # inputs."illwill".type = "github";
  # inputs."illwill".owner = "riinr";
  # inputs."illwill".repo = "flake-nimble";
  # inputs."illwill".ref = "flake-pinning";
  # inputs."illwill".dir = "nimpkgs/i/illwill";
  # inputs."illwill".inputs.nixpkgs.follows = "nixpkgs";
  # inputs."illwill".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  outputs = { self, nixpkgs, flakeNimbleLib, src-nimothello-v1_0_0, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nimothello-v1_0_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-nimothello-v1_0_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}