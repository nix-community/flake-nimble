{
  description = ''Utilities for the Encoding for Robust Immutable Storage (ERIS)'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-eris_utils-0_1_1.flake = false;
  inputs.src-eris_utils-0_1_1.type = "other";
  inputs.src-eris_utils-0_1_1.owner = "~ehmry";
  inputs.src-eris_utils-0_1_1.repo = "eris_utils";
  inputs.src-eris_utils-0_1_1.ref = "refs/tags/0.1.1";
  inputs.src-eris_utils-0_1_1.inputs.nixpkgs.follows = "nixpkgs";
  
  
  inputs."eris".type = "github";
  inputs."eris".owner = "riinr";
  inputs."eris".repo = "flake-nimble";
  inputs."eris".ref = "flake-pinning";
  inputs."eris".dir = "nimpkgs/e/eris";
  inputs."eris".inputs.nixpkgs.follows = "nixpkgs";
  inputs."eris".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  outputs = { self, nixpkgs, flakeNimbleLib, src-eris_utils-0_1_1, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-eris_utils-0_1_1;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-eris_utils-0_1_1"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}