{
  description = ''Writing a 2D Platform Game in Nim with SDL2'';
  inputs.src-platformer-master.flake = false;
  inputs.src-platformer-master.type = "github";
  inputs.src-platformer-master.owner = "def-";
  inputs.src-platformer-master.repo = "nim-platformer";
  inputs.src-platformer-master.ref = "refs/heads/master";
  
  
  inputs."sdl2".type = "github";
  inputs."sdl2".owner = "riinr";
  inputs."sdl2".repo = "flake-nimble";
  inputs."sdl2".ref = "flake-pinning";
  inputs."sdl2".dir = "nimpkgs/s/sdl2";

  
  inputs."strfmt".type = "github";
  inputs."strfmt".owner = "riinr";
  inputs."strfmt".repo = "flake-nimble";
  inputs."strfmt".ref = "flake-pinning";
  inputs."strfmt".dir = "nimpkgs/s/strfmt";

  
  inputs."basic2d".type = "github";
  inputs."basic2d".owner = "riinr";
  inputs."basic2d".repo = "flake-nimble";
  inputs."basic2d".ref = "flake-pinning";
  inputs."basic2d".dir = "nimpkgs/b/basic2d";

  outputs = { self, nixpkgs, src-platformer-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-platformer-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-platformer-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}