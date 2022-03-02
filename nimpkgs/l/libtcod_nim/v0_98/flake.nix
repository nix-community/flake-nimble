{
  description = ''Wrapper of the libtcod library for the Nim language.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  inputs.src-libtcod_nim-v0_98.flake = false;
  inputs.src-libtcod_nim-v0_98.type = "github";
  inputs.src-libtcod_nim-v0_98.owner = "Vladar4";
  inputs.src-libtcod_nim-v0_98.repo = "libtcod_nim";
  inputs.src-libtcod_nim-v0_98.ref = "refs/tags/v0.98";
  inputs.src-libtcod_nim-v0_98.inputs.nixpkgs.follows = "nixpkgs";
  
  
  # inputs."sdl1".type = "github";
  # inputs."sdl1".owner = "riinr";
  # inputs."sdl1".repo = "flake-nimble";
  # inputs."sdl1".ref = "flake-pinning";
  # inputs."sdl1".dir = "nimpkgs/s/sdl1";
  # inputs."sdl1".inputs.nixpkgs.follows = "nixpkgs";
  # inputs."sdl1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  outputs = { self, nixpkgs, flakeNimbleLib, src-libtcod_nim-v0_98, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-libtcod_nim-v0_98;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-libtcod_nim-v0_98"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}