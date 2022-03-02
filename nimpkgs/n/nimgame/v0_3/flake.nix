{
  description = ''A simple 2D game engine for Nim language. Deprecated, use nimgame2 instead.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  inputs.src-nimgame-v0_3.flake = false;
  inputs.src-nimgame-v0_3.type = "github";
  inputs.src-nimgame-v0_3.owner = "Vladar4";
  inputs.src-nimgame-v0_3.repo = "nimgame";
  inputs.src-nimgame-v0_3.ref = "refs/tags/v0.3";
  inputs.src-nimgame-v0_3.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-nimgame-v0_3, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nimgame-v0_3;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-nimgame-v0_3"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}