{
  description = ''Encoding for Robust Immutable Storage (ERIS)'';
  inputs.src-eris-0_2_1.flake = false;
  inputs.src-eris-0_2_1.type = "other";
  inputs.src-eris-0_2_1.owner = "~ehmry";
  inputs.src-eris-0_2_1.repo = "eris";
  inputs.src-eris-0_2_1.ref = "refs/tags/0.2.1";
  
  
  inputs."base32".type = "github";
  inputs."base32".owner = "riinr";
  inputs."base32".repo = "flake-nimble";
  inputs."base32".ref = "flake-pinning";
  inputs."base32".dir = "nimpkgs/b/base32";

  
  inputs."taps".type = "github";
  inputs."taps".owner = "riinr";
  inputs."taps".repo = "flake-nimble";
  inputs."taps".ref = "flake-pinning";
  inputs."taps".dir = "nimpkgs/t/taps";

  
  inputs."lmdb".type = "github";
  inputs."lmdb".owner = "riinr";
  inputs."lmdb".repo = "flake-nimble";
  inputs."lmdb".ref = "flake-pinning";
  inputs."lmdb".dir = "nimpkgs/l/lmdb";

  outputs = { self, nixpkgs, src-eris-0_2_1, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-eris-0_2_1;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-eris-0_2_1"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}