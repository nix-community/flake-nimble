{
  description = ''A 3d sound API for nim.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-slappy-0_3_0.flake = false;
  inputs.src-slappy-0_3_0.type = "github";
  inputs.src-slappy-0_3_0.owner = "treeform";
  inputs.src-slappy-0_3_0.repo = "slappy";
  inputs.src-slappy-0_3_0.ref = "refs/tags/0.3.0";
  inputs.src-slappy-0_3_0.inputs.nixpkgs.follows = "nixpkgs";
  
  
  # inputs."openal".type = "github";
  # inputs."openal".owner = "riinr";
  # inputs."openal".repo = "flake-nimble";
  # inputs."openal".ref = "flake-pinning";
  # inputs."openal".dir = "nimpkgs/o/openal";
  # inputs."openal".inputs.nixpkgs.follows = "nixpkgs";
  # inputs."openal".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  
  # inputs."vmath".type = "github";
  # inputs."vmath".owner = "riinr";
  # inputs."vmath".repo = "flake-nimble";
  # inputs."vmath".ref = "flake-pinning";
  # inputs."vmath".dir = "nimpkgs/v/vmath";
  # inputs."vmath".inputs.nixpkgs.follows = "nixpkgs";
  # inputs."vmath".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  outputs = { self, nixpkgs, flakeNimbleLib, src-slappy-0_3_0, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-slappy-0_3_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-slappy-0_3_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}