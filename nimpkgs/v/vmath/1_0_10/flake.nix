{
  description = ''Collection of math routines for 2d and 3d graphics.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-vmath-1_0_10.flake = false;
  inputs.src-vmath-1_0_10.type = "github";
  inputs.src-vmath-1_0_10.owner = "treeform";
  inputs.src-vmath-1_0_10.repo = "vmath";
  inputs.src-vmath-1_0_10.ref = "refs/tags/1.0.10";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-vmath-1_0_10, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-vmath-1_0_10;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-vmath-1_0_10"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}