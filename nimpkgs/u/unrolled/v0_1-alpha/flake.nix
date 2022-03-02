{
  description = ''Unroll for-loops at compile-time.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  inputs.src-unrolled-v0_1-alpha.flake = false;
  inputs.src-unrolled-v0_1-alpha.type = "github";
  inputs.src-unrolled-v0_1-alpha.owner = "schneiderfelipe";
  inputs.src-unrolled-v0_1-alpha.repo = "unrolled";
  inputs.src-unrolled-v0_1-alpha.ref = "refs/tags/v0.1-alpha";
  inputs.src-unrolled-v0_1-alpha.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-unrolled-v0_1-alpha, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-unrolled-v0_1-alpha;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-unrolled-v0_1-alpha"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}