{
  description = ''Encoding for Robust Immutable Storage (ERIS)'';
  inputs.src-eris-0_7_1.flake = false;
  inputs.src-eris-0_7_1.type = "other";
  inputs.src-eris-0_7_1.owner = "~ehmry";
  inputs.src-eris-0_7_1.repo = "eris";
  inputs.src-eris-0_7_1.ref = "refs/tags/0.7.1";
  
  
  inputs."base32".type = "github";
  inputs."base32".owner = "riinr";
  inputs."base32".repo = "flake-nimble";
  inputs."base32".ref = "flake-pinning";
  inputs."base32".dir = "nimpkgs/b/base32";

  outputs = { self, nixpkgs, src-eris-0_7_1, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-eris-0_7_1;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-eris-0_7_1"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}