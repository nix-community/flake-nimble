{
  description = ''A 3d sound API for nim.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-slappy-0_3_0.flake = false;
  inputs.src-slappy-0_3_0.type = "github";
  inputs.src-slappy-0_3_0.owner = "treeform";
  inputs.src-slappy-0_3_0.repo = "slappy";
  inputs.src-slappy-0_3_0.ref = "refs/tags/0.3.0";
  
  
  inputs."openal".type = "github";
  inputs."openal".owner = "riinr";
  inputs."openal".repo = "flake-nimble";
  inputs."openal".ref = "flake-pinning";
  inputs."openal".dir = "nimpkgs/o/openal";

  
  inputs."vmath".type = "github";
  inputs."vmath".owner = "riinr";
  inputs."vmath".repo = "flake-nimble";
  inputs."vmath".ref = "flake-pinning";
  inputs."vmath".dir = "nimpkgs/v/vmath";

  outputs = { self, nixpkgs, flakeNimbleLib, src-slappy-0_3_0, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-slappy-0_3_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-slappy-0_3_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}