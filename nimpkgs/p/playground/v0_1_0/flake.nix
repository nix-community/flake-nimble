{
  description = ''Web-based playground for testing Nim code.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-playground-v0_1_0.flake = false;
  inputs.src-playground-v0_1_0.type = "github";
  inputs.src-playground-v0_1_0.owner = "theduke";
  inputs.src-playground-v0_1_0.repo = "nim-playground";
  inputs.src-playground-v0_1_0.ref = "refs/tags/v0.1.0";
  inputs.src-playground-v0_1_0.inputs.nixpkgs.follows = "nixpkgs";
  
  
  inputs."jester".type = "github";
  inputs."jester".owner = "riinr";
  inputs."jester".repo = "flake-nimble";
  inputs."jester".ref = "flake-pinning";
  inputs."jester".dir = "nimpkgs/j/jester";
  inputs."jester".inputs.nixpkgs.follows = "nixpkgs";
  inputs."jester".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  outputs = { self, nixpkgs, flakeNimbleLib, src-playground-v0_1_0, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-playground-v0_1_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-playground-v0_1_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}