{
  description = ''Encoding for Robust Immutable Storage (ERIS)'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-eris-0_2_0.flake = false;
  inputs.src-eris-0_2_0.type = "other";
  inputs.src-eris-0_2_0.owner = "~ehmry";
  inputs.src-eris-0_2_0.repo = "eris";
  inputs.src-eris-0_2_0.ref = "refs/tags/0.2.0";
  
  
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

  outputs = { self, nixpkgs, flakeNimbleLib, src-eris-0_2_0, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-eris-0_2_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-eris-0_2_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}