{
  description = ''NES emulator using SDL2, also compiles to JavaScript with emscripten.'';
  inputs.src-nimes-master.flake = false;
  inputs.src-nimes-master.type = "github";
  inputs.src-nimes-master.owner = "def-";
  inputs.src-nimes-master.repo = "nimes";
  inputs.src-nimes-master.ref = "refs/heads/master";
  
  
  inputs."sdl2".type = "github";
  inputs."sdl2".owner = "riinr";
  inputs."sdl2".repo = "flake-nimble";
  inputs."sdl2".ref = "flake-pinning";
  inputs."sdl2".dir = "nimpkgs/s/sdl2";

  outputs = { self, nixpkgs, src-nimes-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nimes-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-nimes-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}