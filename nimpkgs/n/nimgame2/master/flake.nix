{
  description = ''A simple 2D game engine for Nim language.'';
  inputs.src-nimgame2-master.flake = false;
  inputs.src-nimgame2-master.type = "github";
  inputs.src-nimgame2-master.owner = "Vladar4";
  inputs.src-nimgame2-master.repo = "nimgame2";
  inputs.src-nimgame2-master.ref = "refs/heads/master";
  
  
  inputs."sdl2_nim".type = "github";
  inputs."sdl2_nim".owner = "riinr";
  inputs."sdl2_nim".repo = "flake-nimble";
  inputs."sdl2_nim".ref = "flake-pinning";
  inputs."sdl2_nim".dir = "nimpkgs/s/sdl2_nim";

  outputs = { self, nixpkgs, src-nimgame2-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nimgame2-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-nimgame2-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}