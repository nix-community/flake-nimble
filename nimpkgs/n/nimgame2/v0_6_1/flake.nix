{
  description = ''A simple 2D game engine for Nim language.'';
  inputs.src-nimgame2-v0_6_1.flake = false;
  inputs.src-nimgame2-v0_6_1.type = "github";
  inputs.src-nimgame2-v0_6_1.owner = "Vladar4";
  inputs.src-nimgame2-v0_6_1.repo = "nimgame2";
  inputs.src-nimgame2-v0_6_1.ref = "refs/tags/v0.6.1";
  
  
  inputs."sdl2_nim".url = "path:../../../s/sdl2_nim";
  inputs."sdl2_nim".type = "github";
  inputs."sdl2_nim".owner = "riinr";
  inputs."sdl2_nim".repo = "flake-nimble";
  inputs."sdl2_nim".ref = "flake-pinning";
  inputs."sdl2_nim".dir = "nimpkgs/s/sdl2_nim";

  outputs = { self, nixpkgs, src-nimgame2-v0_6_1, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nimgame2-v0_6_1;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-nimgame2-v0_6_1"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}