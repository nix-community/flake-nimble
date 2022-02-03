{
  description = ''Utilities for the Encoding for Robust Immutable Storage (ERIS)'';
  inputs.src-eris_utils-0_4_0.flake = false;
  inputs.src-eris_utils-0_4_0.type = "other";
  inputs.src-eris_utils-0_4_0.owner = "~ehmry";
  inputs.src-eris_utils-0_4_0.repo = "eris_utils";
  inputs.src-eris_utils-0_4_0.ref = "refs/tags/0.4.0";
  
  
  inputs."eris".url = "path:../../../e/eris";
  inputs."eris".type = "github";
  inputs."eris".owner = "riinr";
  inputs."eris".repo = "flake-nimble";
  inputs."eris".ref = "flake-pinning";
  inputs."eris".dir = "nimpkgs/e/eris";

  
  inputs."tkrzw".url = "path:../../../t/tkrzw";
  inputs."tkrzw".type = "github";
  inputs."tkrzw".owner = "riinr";
  inputs."tkrzw".repo = "flake-nimble";
  inputs."tkrzw".ref = "flake-pinning";
  inputs."tkrzw".dir = "nimpkgs/t/tkrzw";

  outputs = { self, nixpkgs, src-eris_utils-0_4_0, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-eris_utils-0_4_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-eris_utils-0_4_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}