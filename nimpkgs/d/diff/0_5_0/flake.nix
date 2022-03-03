{
  description = ''Library for finding the differences between two sequences'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-diff-0_5_0.flake = false;
  inputs.src-diff-0_5_0.type = "github";
  inputs.src-diff-0_5_0.owner = "mark-summerfield";
  inputs.src-diff-0_5_0.repo = "diff";
  inputs.src-diff-0_5_0.ref = "refs/tags/0.5.0";
  inputs.src-diff-0_5_0.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-diff-0_5_0, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-diff-0_5_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-diff-0_5_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}