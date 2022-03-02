{
  description = ''Wrapper of the SDL 2 library for the Nim language.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  inputs.src-sdl2_nim-v2_0_14_3.flake = false;
  inputs.src-sdl2_nim-v2_0_14_3.type = "github";
  inputs.src-sdl2_nim-v2_0_14_3.owner = "Vladar4";
  inputs.src-sdl2_nim-v2_0_14_3.repo = "sdl2_nim";
  inputs.src-sdl2_nim-v2_0_14_3.ref = "refs/tags/v2.0.14.3";
  inputs.src-sdl2_nim-v2_0_14_3.inputs.nixpkgs.follows = "nixpkgs";
  
  
  # inputs."winim".type = "github";
  # inputs."winim".owner = "riinr";
  # inputs."winim".repo = "flake-nimble";
  # inputs."winim".ref = "flake-pinning";
  # inputs."winim".dir = "nimpkgs/w/winim";
  # inputs."winim".inputs.nixpkgs.follows = "nixpkgs";
  # inputs."winim".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  
  # inputs."x11".type = "github";
  # inputs."x11".owner = "riinr";
  # inputs."x11".repo = "flake-nimble";
  # inputs."x11".ref = "flake-pinning";
  # inputs."x11".dir = "nimpkgs/x/x11";
  # inputs."x11".inputs.nixpkgs.follows = "nixpkgs";
  # inputs."x11".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  outputs = { self, nixpkgs, flakeNimbleLib, src-sdl2_nim-v2_0_14_3, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-sdl2_nim-v2_0_14_3;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-sdl2_nim-v2_0_14_3"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}