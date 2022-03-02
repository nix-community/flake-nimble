{
  description = ''Small, dependency-free, fast Nim package (and CLI tool) for removing tracking fields from URLs.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  inputs.src-unalix-v0_5_1.flake = false;
  inputs.src-unalix-v0_5_1.type = "github";
  inputs.src-unalix-v0_5_1.owner = "AmanoTeam";
  inputs.src-unalix-v0_5_1.repo = "Unalix-nim";
  inputs.src-unalix-v0_5_1.ref = "refs/tags/v0.5.1";
  inputs.src-unalix-v0_5_1.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-unalix-v0_5_1, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-unalix-v0_5_1;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-unalix-v0_5_1"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}