{
  description = ''Encoding for Robust Immutable Storage (ERIS)'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
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

  outputs = { self, nixpkgs, flakeNimbleLib, src-eris-0_7_1, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-eris-0_7_1;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-eris-0_7_1"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}