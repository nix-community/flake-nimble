{
  description = ''Wrapper of the SDL 2 library for the Nim language.'';
  inputs.src-sdl2_nim-v2_0_12_1.flake = false;
  inputs.src-sdl2_nim-v2_0_12_1.type = "github";
  inputs.src-sdl2_nim-v2_0_12_1.owner = "Vladar4";
  inputs.src-sdl2_nim-v2_0_12_1.repo = "sdl2_nim";
  inputs.src-sdl2_nim-v2_0_12_1.ref = "refs/tags/v2.0.12.1";
  
  outputs = { self, nixpkgs, src-sdl2_nim-v2_0_12_1, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-sdl2_nim-v2_0_12_1;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-sdl2_nim-v2_0_12_1"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}