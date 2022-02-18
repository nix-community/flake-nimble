{
  description = ''Wrapper of the SDL 2 library for the Nim language.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-sdl2_nim-v2_0_7_1.flake = false;
  inputs.src-sdl2_nim-v2_0_7_1.type = "github";
  inputs.src-sdl2_nim-v2_0_7_1.owner = "Vladar4";
  inputs.src-sdl2_nim-v2_0_7_1.repo = "sdl2_nim";
  inputs.src-sdl2_nim-v2_0_7_1.ref = "refs/tags/v2.0.7.1";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-sdl2_nim-v2_0_7_1, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-sdl2_nim-v2_0_7_1;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-sdl2_nim-v2_0_7_1"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}