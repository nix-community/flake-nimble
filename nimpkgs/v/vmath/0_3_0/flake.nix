{
  description = ''Collection of math routines for 2d and 3d graphics.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  inputs.src-vmath-0_3_0.flake = false;
  inputs.src-vmath-0_3_0.type = "github";
  inputs.src-vmath-0_3_0.owner = "treeform";
  inputs.src-vmath-0_3_0.repo = "vmath";
  inputs.src-vmath-0_3_0.ref = "refs/tags/0.3.0";
  inputs.src-vmath-0_3_0.inputs.nixpkgs.follows = "nixpkgs";
  
  
  # inputs."mddoc".type = "github";
  # inputs."mddoc".owner = "riinr";
  # inputs."mddoc".repo = "flake-nimble";
  # inputs."mddoc".ref = "flake-pinning";
  # inputs."mddoc".dir = "nimpkgs/m/mddoc";
  # inputs."mddoc".inputs.nixpkgs.follows = "nixpkgs";
  # inputs."mddoc".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  outputs = { self, nixpkgs, flakeNimbleLib, src-vmath-0_3_0, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-vmath-0_3_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-vmath-0_3_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}