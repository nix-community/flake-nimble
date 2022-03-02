{
  description = ''Collection of math routines for 2d and 3d graphics.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  inputs.src-vmath-1_0_5.flake = false;
  inputs.src-vmath-1_0_5.type = "github";
  inputs.src-vmath-1_0_5.owner = "treeform";
  inputs.src-vmath-1_0_5.repo = "vmath";
  inputs.src-vmath-1_0_5.ref = "refs/tags/1.0.5";
  inputs.src-vmath-1_0_5.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-vmath-1_0_5, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-vmath-1_0_5;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-vmath-1_0_5"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}