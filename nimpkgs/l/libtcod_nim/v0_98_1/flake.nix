{
  description = ''Wrapper of the libtcod library for the Nim language.'';
  inputs.src-libtcod_nim-v0_98_1.flake = false;
  inputs.src-libtcod_nim-v0_98_1.type = "github";
  inputs.src-libtcod_nim-v0_98_1.owner = "Vladar4";
  inputs.src-libtcod_nim-v0_98_1.repo = "libtcod_nim";
  inputs.src-libtcod_nim-v0_98_1.ref = "refs/tags/v0.98.1";
  
  
  inputs."sdl1".type = "github";
  inputs."sdl1".owner = "riinr";
  inputs."sdl1".repo = "flake-nimble";
  inputs."sdl1".ref = "flake-pinning";
  inputs."sdl1".dir = "nimpkgs/s/sdl1";

  outputs = { self, nixpkgs, src-libtcod_nim-v0_98_1, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-libtcod_nim-v0_98_1;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-libtcod_nim-v0_98_1"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}