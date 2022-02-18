{
  description = ''Utilities for the Encoding for Robust Immutable Storage (ERIS)'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-eris_utils-0_1_3.flake = false;
  inputs.src-eris_utils-0_1_3.type = "other";
  inputs.src-eris_utils-0_1_3.owner = "~ehmry";
  inputs.src-eris_utils-0_1_3.repo = "eris_utils";
  inputs.src-eris_utils-0_1_3.ref = "refs/tags/0.1.3";
  
  
  inputs."eris".type = "github";
  inputs."eris".owner = "riinr";
  inputs."eris".repo = "flake-nimble";
  inputs."eris".ref = "flake-pinning";
  inputs."eris".dir = "nimpkgs/e/eris";

  outputs = { self, nixpkgs, flakeNimbleLib, src-eris_utils-0_1_3, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-eris_utils-0_1_3;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-eris_utils-0_1_3"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}