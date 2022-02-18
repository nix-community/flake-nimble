{
  description = ''A 3d sound API for nim.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-slappy-0_3_1.flake = false;
  inputs.src-slappy-0_3_1.type = "github";
  inputs.src-slappy-0_3_1.owner = "treeform";
  inputs.src-slappy-0_3_1.repo = "slappy";
  inputs.src-slappy-0_3_1.ref = "refs/tags/0.3.1";
  
  
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

  
  inputs."supersnappy".type = "github";
  inputs."supersnappy".owner = "riinr";
  inputs."supersnappy".repo = "flake-nimble";
  inputs."supersnappy".ref = "flake-pinning";
  inputs."supersnappy".dir = "nimpkgs/s/supersnappy";

  outputs = { self, nixpkgs, flakeNimbleLib, src-slappy-0_3_1, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-slappy-0_3_1;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-slappy-0_3_1"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}