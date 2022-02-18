{
  description = ''A simple 2D game engine for Nim language. Deprecated, use nimgame2 instead.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-nimgame-master.flake = false;
  inputs.src-nimgame-master.type = "github";
  inputs.src-nimgame-master.owner = "Vladar4";
  inputs.src-nimgame-master.repo = "nimgame";
  inputs.src-nimgame-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-nimgame-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nimgame-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-nimgame-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}