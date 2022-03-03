{
  description = ''Wrapper of the SDL 2 library for the Nim language.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-sdl2_nim-v2_0_14_2.flake = false;
  inputs.src-sdl2_nim-v2_0_14_2.type = "github";
  inputs.src-sdl2_nim-v2_0_14_2.owner = "Vladar4";
  inputs.src-sdl2_nim-v2_0_14_2.repo = "sdl2_nim";
  inputs.src-sdl2_nim-v2_0_14_2.ref = "refs/tags/v2.0.14.2";
  inputs.src-sdl2_nim-v2_0_14_2.inputs.nixpkgs.follows = "nixpkgs";
  
  
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

  outputs = { self, nixpkgs, flakeNimbleLib, src-sdl2_nim-v2_0_14_2, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-sdl2_nim-v2_0_14_2;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-sdl2_nim-v2_0_14_2"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}