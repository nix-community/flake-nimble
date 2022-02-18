{
  description = ''Conway's Game of Life implemented in Nim'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-hayaa-v0_2_0.flake = false;
  inputs.src-hayaa-v0_2_0.type = "github";
  inputs.src-hayaa-v0_2_0.owner = "angus-lherrou";
  inputs.src-hayaa-v0_2_0.repo = "hayaa";
  inputs.src-hayaa-v0_2_0.ref = "refs/tags/v0.2.0";
  
  
  inputs."illwill".type = "github";
  inputs."illwill".owner = "riinr";
  inputs."illwill".repo = "flake-nimble";
  inputs."illwill".ref = "flake-pinning";
  inputs."illwill".dir = "nimpkgs/i/illwill";

  outputs = { self, nixpkgs, flakeNimbleLib, src-hayaa-v0_2_0, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-hayaa-v0_2_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-hayaa-v0_2_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}