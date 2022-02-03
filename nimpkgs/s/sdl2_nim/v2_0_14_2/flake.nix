{
  description = ''Wrapper of the SDL 2 library for the Nim language.'';
  inputs.src-sdl2_nim-v2_0_14_2.flake = false;
  inputs.src-sdl2_nim-v2_0_14_2.type = "github";
  inputs.src-sdl2_nim-v2_0_14_2.owner = "Vladar4";
  inputs.src-sdl2_nim-v2_0_14_2.repo = "sdl2_nim";
  inputs.src-sdl2_nim-v2_0_14_2.ref = "refs/tags/v2.0.14.2";
  
  
  inputs."winim".url = "path:../../../w/winim";
  inputs."winim".type = "github";
  inputs."winim".owner = "riinr";
  inputs."winim".repo = "flake-nimble";
  inputs."winim".ref = "flake-pinning";
  inputs."winim".dir = "nimpkgs/w/winim";

  
  inputs."x11".url = "path:../../../x/x11";
  inputs."x11".type = "github";
  inputs."x11".owner = "riinr";
  inputs."x11".repo = "flake-nimble";
  inputs."x11".ref = "flake-pinning";
  inputs."x11".dir = "nimpkgs/x/x11";

  outputs = { self, nixpkgs, src-sdl2_nim-v2_0_14_2, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-sdl2_nim-v2_0_14_2;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-sdl2_nim-v2_0_14_2"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}