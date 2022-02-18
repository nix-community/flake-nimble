{
  description = ''Binary serialization framework'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-bingo-v0_4_1.flake = false;
  inputs.src-bingo-v0_4_1.type = "github";
  inputs.src-bingo-v0_4_1.owner = "planetis-m";
  inputs.src-bingo-v0_4_1.repo = "bingo";
  inputs.src-bingo-v0_4_1.ref = "refs/tags/v0.4.1";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-bingo-v0_4_1, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-bingo-v0_4_1;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-bingo-v0_4_1"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}