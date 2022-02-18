{
  description = ''A library of functions to make creating games using Nim and SDL2 easier. This does not intend to be a full blown engine and tries to keep all the components loosely coupled so that individual parts can be used separately.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-gamelib-master.flake = false;
  inputs.src-gamelib-master.type = "github";
  inputs.src-gamelib-master.owner = "PMunch";
  inputs.src-gamelib-master.repo = "SDLGamelib";
  inputs.src-gamelib-master.ref = "refs/heads/master";
  
  
  inputs."sdl2".type = "github";
  inputs."sdl2".owner = "riinr";
  inputs."sdl2".repo = "flake-nimble";
  inputs."sdl2".ref = "flake-pinning";
  inputs."sdl2".dir = "nimpkgs/s/sdl2";

  outputs = { self, nixpkgs, flakeNimbleLib, src-gamelib-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-gamelib-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-gamelib-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}