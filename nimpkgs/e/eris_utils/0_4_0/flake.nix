{
  description = ''Utilities for the Encoding for Robust Immutable Storage (ERIS)'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-eris_utils-0_4_0.flake = false;
  inputs.src-eris_utils-0_4_0.type = "other";
  inputs.src-eris_utils-0_4_0.owner = "~ehmry";
  inputs.src-eris_utils-0_4_0.repo = "eris_utils";
  inputs.src-eris_utils-0_4_0.ref = "refs/tags/0.4.0";
  
  
  inputs."eris".type = "github";
  inputs."eris".owner = "riinr";
  inputs."eris".repo = "flake-nimble";
  inputs."eris".ref = "flake-pinning";
  inputs."eris".dir = "nimpkgs/e/eris";

  
  inputs."tkrzw".type = "github";
  inputs."tkrzw".owner = "riinr";
  inputs."tkrzw".repo = "flake-nimble";
  inputs."tkrzw".ref = "flake-pinning";
  inputs."tkrzw".dir = "nimpkgs/t/tkrzw";

  outputs = { self, nixpkgs, flakeNimbleLib, src-eris_utils-0_4_0, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-eris_utils-0_4_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-eris_utils-0_4_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}