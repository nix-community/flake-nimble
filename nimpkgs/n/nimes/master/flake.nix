{
  description = ''NES emulator using SDL2, also compiles to JavaScript with emscripten.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-nimes-master.flake = false;
  inputs.src-nimes-master.type = "github";
  inputs.src-nimes-master.owner = "def-";
  inputs.src-nimes-master.repo = "nimes";
  inputs.src-nimes-master.ref = "refs/heads/master";
  inputs.src-nimes-master.inputs.nixpkgs.follows = "nixpkgs";
  
  
  # inputs."sdl2".type = "github";
  # inputs."sdl2".owner = "riinr";
  # inputs."sdl2".repo = "flake-nimble";
  # inputs."sdl2".ref = "flake-pinning";
  # inputs."sdl2".dir = "nimpkgs/s/sdl2";
  # inputs."sdl2".inputs.nixpkgs.follows = "nixpkgs";
  # inputs."sdl2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  outputs = { self, nixpkgs, flakeNimbleLib, src-nimes-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nimes-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-nimes-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}