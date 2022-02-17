{
  description = ''Lightweight audio mixer for SDL2'';
  inputs.src-cmixer_sdl2-master.flake = false;
  inputs.src-cmixer_sdl2-master.type = "github";
  inputs.src-cmixer_sdl2-master.owner = "rxi";
  inputs.src-cmixer_sdl2-master.repo = "cmixer_sdl2-nim";
  inputs.src-cmixer_sdl2-master.ref = "refs/heads/master";
  
  
  inputs."cmixer".type = "github";
  inputs."cmixer".owner = "riinr";
  inputs."cmixer".repo = "flake-nimble";
  inputs."cmixer".ref = "flake-pinning";
  inputs."cmixer".dir = "nimpkgs/c/cmixer";

  
  inputs."sdl2".type = "github";
  inputs."sdl2".owner = "riinr";
  inputs."sdl2".repo = "flake-nimble";
  inputs."sdl2".ref = "flake-pinning";
  inputs."sdl2".dir = "nimpkgs/s/sdl2";

  outputs = { self, nixpkgs, src-cmixer_sdl2-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-cmixer_sdl2-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-cmixer_sdl2-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}