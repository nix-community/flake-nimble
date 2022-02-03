{
  description = ''Wrapper of the SDL 2 library for the Nim language.'';
  inputs.src-sdl2_nim-v2_0_14_0.flake = false;
  inputs.src-sdl2_nim-v2_0_14_0.type = "github";
  inputs.src-sdl2_nim-v2_0_14_0.owner = "Vladar4";
  inputs.src-sdl2_nim-v2_0_14_0.repo = "sdl2_nim";
  inputs.src-sdl2_nim-v2_0_14_0.ref = "refs/tags/v2.0.14.0";
  
  outputs = { self, nixpkgs, src-sdl2_nim-v2_0_14_0, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-sdl2_nim-v2_0_14_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-sdl2_nim-v2_0_14_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}