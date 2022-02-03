{
  description = ''Utilities for the Encoding for Robust Immutable Storage (ERIS)'';
  inputs.src-eris_utils-0_1_1.flake = false;
  inputs.src-eris_utils-0_1_1.type = "other";
  inputs.src-eris_utils-0_1_1.owner = "~ehmry";
  inputs.src-eris_utils-0_1_1.repo = "eris_utils";
  inputs.src-eris_utils-0_1_1.ref = "refs/tags/0.1.1";
  
  
  inputs."eris".url = "path:../../../e/eris";
  inputs."eris".type = "github";
  inputs."eris".owner = "riinr";
  inputs."eris".repo = "flake-nimble";
  inputs."eris".ref = "flake-pinning";
  inputs."eris".dir = "nimpkgs/e/eris";

  outputs = { self, nixpkgs, src-eris_utils-0_1_1, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-eris_utils-0_1_1;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-eris_utils-0_1_1"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}