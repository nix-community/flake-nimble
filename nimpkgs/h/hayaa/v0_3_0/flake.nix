{
  description = ''Conway's Game of Life implemented in Nim'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-hayaa-v0_3_0.flake = false;
  inputs.src-hayaa-v0_3_0.type = "github";
  inputs.src-hayaa-v0_3_0.owner = "angus-lherrou";
  inputs.src-hayaa-v0_3_0.repo = "hayaa";
  inputs.src-hayaa-v0_3_0.ref = "refs/tags/v0.3.0";
  inputs.src-hayaa-v0_3_0.inputs.nixpkgs.follows = "nixpkgs";
  
  
  # inputs."illwill".type = "github";
  # inputs."illwill".owner = "riinr";
  # inputs."illwill".repo = "flake-nimble";
  # inputs."illwill".ref = "flake-pinning";
  # inputs."illwill".dir = "nimpkgs/i/illwill";
  # inputs."illwill".inputs.nixpkgs.follows = "nixpkgs";
  # inputs."illwill".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  outputs = { self, nixpkgs, flakeNimbleLib, src-hayaa-v0_3_0, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-hayaa-v0_3_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-hayaa-v0_3_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}