{
  description = ''Binary serialization framework'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  inputs.src-bingo-v0_3_0.flake = false;
  inputs.src-bingo-v0_3_0.type = "github";
  inputs.src-bingo-v0_3_0.owner = "planetis-m";
  inputs.src-bingo-v0_3_0.repo = "bingo";
  inputs.src-bingo-v0_3_0.ref = "refs/tags/v0.3.0";
  inputs.src-bingo-v0_3_0.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-bingo-v0_3_0, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-bingo-v0_3_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-bingo-v0_3_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}