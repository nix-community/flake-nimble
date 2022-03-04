{
  description = ''2d collision library for Nim.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-bumpy-1_0_2.flake = false;
  inputs.src-bumpy-1_0_2.type = "github";
  inputs.src-bumpy-1_0_2.owner = "treeform";
  inputs.src-bumpy-1_0_2.repo = "bumpy";
  inputs.src-bumpy-1_0_2.ref = "refs/tags/1.0.2";
  inputs.src-bumpy-1_0_2.inputs.nixpkgs.follows = "nixpkgs";
  
  
  inputs."vmath".type = "github";
  inputs."vmath".owner = "riinr";
  inputs."vmath".repo = "flake-nimble";
  inputs."vmath".ref = "flake-pinning";
  inputs."vmath".dir = "nimpkgs/v/vmath";
  inputs."vmath".inputs.nixpkgs.follows = "nixpkgs";
  inputs."vmath".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  outputs = { self, nixpkgs, flakeNimbleLib, src-bumpy-1_0_2, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-bumpy-1_0_2;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-bumpy-1_0_2"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}