{
  description = ''Encoding for Robust Immutable Storage (ERIS)'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-eris-0_3_1.flake = false;
  inputs.src-eris-0_3_1.type = "other";
  inputs.src-eris-0_3_1.owner = "~ehmry";
  inputs.src-eris-0_3_1.repo = "eris";
  inputs.src-eris-0_3_1.ref = "refs/tags/0.3.1";
  inputs.src-eris-0_3_1.inputs.nixpkgs.follows = "nixpkgs";
  
  
  inputs."base32".type = "github";
  inputs."base32".owner = "riinr";
  inputs."base32".repo = "flake-nimble";
  inputs."base32".ref = "flake-pinning";
  inputs."base32".dir = "nimpkgs/b/base32";
  inputs."base32".inputs.nixpkgs.follows = "nixpkgs";
  inputs."base32".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  
  inputs."taps".type = "github";
  inputs."taps".owner = "riinr";
  inputs."taps".repo = "flake-nimble";
  inputs."taps".ref = "flake-pinning";
  inputs."taps".dir = "nimpkgs/t/taps";
  inputs."taps".inputs.nixpkgs.follows = "nixpkgs";
  inputs."taps".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  
  inputs."lmdb".type = "github";
  inputs."lmdb".owner = "riinr";
  inputs."lmdb".repo = "flake-nimble";
  inputs."lmdb".ref = "flake-pinning";
  inputs."lmdb".dir = "nimpkgs/l/lmdb";
  inputs."lmdb".inputs.nixpkgs.follows = "nixpkgs";
  inputs."lmdb".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  
  inputs."tkrzw".type = "github";
  inputs."tkrzw".owner = "riinr";
  inputs."tkrzw".repo = "flake-nimble";
  inputs."tkrzw".ref = "flake-pinning";
  inputs."tkrzw".dir = "nimpkgs/t/tkrzw";
  inputs."tkrzw".inputs.nixpkgs.follows = "nixpkgs";
  inputs."tkrzw".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  outputs = { self, nixpkgs, flakeNimbleLib, src-eris-0_3_1, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-eris-0_3_1;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-eris-0_3_1"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}