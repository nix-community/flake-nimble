{
  description = ''Library for working with arbitrary values + a map data structure.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-values-v0_1_0.flake = false;
  inputs.src-values-v0_1_0.type = "github";
  inputs.src-values-v0_1_0.owner = "nim-appkit";
  inputs.src-values-v0_1_0.repo = "values";
  inputs.src-values-v0_1_0.ref = "refs/tags/v0.1.0";
  inputs.src-values-v0_1_0.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-values-v0_1_0, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-values-v0_1_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-values-v0_1_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}