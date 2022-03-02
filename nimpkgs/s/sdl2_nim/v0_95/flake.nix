{
  description = ''Wrapper of the SDL 2 library for the Nim language.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  inputs.src-sdl2_nim-v0_95.flake = false;
  inputs.src-sdl2_nim-v0_95.type = "github";
  inputs.src-sdl2_nim-v0_95.owner = "Vladar4";
  inputs.src-sdl2_nim-v0_95.repo = "sdl2_nim";
  inputs.src-sdl2_nim-v0_95.ref = "refs/tags/v0.95";
  inputs.src-sdl2_nim-v0_95.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-sdl2_nim-v0_95, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-sdl2_nim-v0_95;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-sdl2_nim-v0_95"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}