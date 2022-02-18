{
  description = ''2d collision library for Nim.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-bumpy-1_0_1.flake = false;
  inputs.src-bumpy-1_0_1.type = "github";
  inputs.src-bumpy-1_0_1.owner = "treeform";
  inputs.src-bumpy-1_0_1.repo = "bumpy";
  inputs.src-bumpy-1_0_1.ref = "refs/tags/1.0.1";
  
  
  inputs."vmath".type = "github";
  inputs."vmath".owner = "riinr";
  inputs."vmath".repo = "flake-nimble";
  inputs."vmath".ref = "flake-pinning";
  inputs."vmath".dir = "nimpkgs/v/vmath";

  outputs = { self, nixpkgs, flakeNimbleLib, src-bumpy-1_0_1, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-bumpy-1_0_1;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-bumpy-1_0_1"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}