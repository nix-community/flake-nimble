{
  description = ''Collection of math routines for 2d and 3d graphics.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-vmath-1_1_0.flake = false;
  inputs.src-vmath-1_1_0.type = "github";
  inputs.src-vmath-1_1_0.owner = "treeform";
  inputs.src-vmath-1_1_0.repo = "vmath";
  inputs.src-vmath-1_1_0.ref = "refs/tags/1.1.0";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-vmath-1_1_0, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-vmath-1_1_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-vmath-1_1_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}