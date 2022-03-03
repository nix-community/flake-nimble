{
  description = ''Collection of math routines for 2d and 3d graphics.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-vmath-1_0_0.flake = false;
  inputs.src-vmath-1_0_0.type = "github";
  inputs.src-vmath-1_0_0.owner = "treeform";
  inputs.src-vmath-1_0_0.repo = "vmath";
  inputs.src-vmath-1_0_0.ref = "refs/tags/1.0.0";
  inputs.src-vmath-1_0_0.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-vmath-1_0_0, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-vmath-1_0_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-vmath-1_0_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}