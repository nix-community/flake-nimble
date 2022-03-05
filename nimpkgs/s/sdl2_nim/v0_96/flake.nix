{
  description = ''Wrapper of the SDL 2 library for the Nim language.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-sdl2_nim-v0_96.flake = false;
  inputs.src-sdl2_nim-v0_96.type = "github";
  inputs.src-sdl2_nim-v0_96.owner = "Vladar4";
  inputs.src-sdl2_nim-v0_96.repo = "sdl2_nim";
  inputs.src-sdl2_nim-v0_96.ref = "refs/tags/v0.96";
  inputs.src-sdl2_nim-v0_96.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-sdl2_nim-v0_96, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-sdl2_nim-v0_96;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-sdl2_nim-v0_96"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}