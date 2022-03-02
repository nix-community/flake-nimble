{
  description = ''A simple 2D game engine for Nim language. Deprecated, use nimgame2 instead.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  inputs.src-nimgame-v0_2.flake = false;
  inputs.src-nimgame-v0_2.type = "github";
  inputs.src-nimgame-v0_2.owner = "Vladar4";
  inputs.src-nimgame-v0_2.repo = "nimgame";
  inputs.src-nimgame-v0_2.ref = "refs/tags/v0.2";
  inputs.src-nimgame-v0_2.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-nimgame-v0_2, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nimgame-v0_2;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-nimgame-v0_2"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}