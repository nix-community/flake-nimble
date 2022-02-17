{
  description = ''A 2D|3D game engine'';
  inputs.src-frag-master.flake = false;
  inputs.src-frag-master.type = "github";
  inputs.src-frag-master.owner = "fragworks";
  inputs.src-frag-master.repo = "frag";
  inputs.src-frag-master.ref = "refs/heads/master";
  
  
  inputs."sdl2".type = "github";
  inputs."sdl2".owner = "riinr";
  inputs."sdl2".repo = "flake-nimble";
  inputs."sdl2".ref = "flake-pinning";
  inputs."sdl2".dir = "nimpkgs/s/sdl2";

  
  inputs."stb_image".type = "github";
  inputs."stb_image".owner = "riinr";
  inputs."stb_image".repo = "flake-nimble";
  inputs."stb_image".ref = "flake-pinning";
  inputs."stb_image".dir = "nimpkgs/s/stb_image";

  
  inputs."https://github.com/yglukhov/android.git".type = "github";
  inputs."https://github.com/yglukhov/android.git".owner = "riinr";
  inputs."https://github.com/yglukhov/android.git".repo = "flake-nimble";
  inputs."https://github.com/yglukhov/android.git".ref = "flake-pinning";
  inputs."https://github.com/yglukhov/android.git".dir = "nimpkgs/h/https://github.com/yglukhov/android.git";

  
  inputs."x11".type = "github";
  inputs."x11".owner = "riinr";
  inputs."x11".repo = "flake-nimble";
  inputs."x11".ref = "flake-pinning";
  inputs."x11".dir = "nimpkgs/x/x11";

  
  inputs."https://github.com/fragworks/nim-chipmunk.git".type = "github";
  inputs."https://github.com/fragworks/nim-chipmunk.git".owner = "riinr";
  inputs."https://github.com/fragworks/nim-chipmunk.git".repo = "flake-nimble";
  inputs."https://github.com/fragworks/nim-chipmunk.git".ref = "flake-pinning";
  inputs."https://github.com/fragworks/nim-chipmunk.git".dir = "nimpkgs/h/https://github.com/fragworks/nim-chipmunk.git";

  
  inputs."https://github.com/zacharycarter/bgfx.nim.git".type = "github";
  inputs."https://github.com/zacharycarter/bgfx.nim.git".owner = "riinr";
  inputs."https://github.com/zacharycarter/bgfx.nim.git".repo = "flake-nimble";
  inputs."https://github.com/zacharycarter/bgfx.nim.git".ref = "flake-pinning";
  inputs."https://github.com/zacharycarter/bgfx.nim.git".dir = "nimpkgs/h/https://github.com/zacharycarter/bgfx.nim.git";

  
  inputs."https://github.com/zacharycarter/bgfx.extras.nim.git".type = "github";
  inputs."https://github.com/zacharycarter/bgfx.extras.nim.git".owner = "riinr";
  inputs."https://github.com/zacharycarter/bgfx.extras.nim.git".repo = "flake-nimble";
  inputs."https://github.com/zacharycarter/bgfx.extras.nim.git".ref = "flake-pinning";
  inputs."https://github.com/zacharycarter/bgfx.extras.nim.git".dir = "nimpkgs/h/https://github.com/zacharycarter/bgfx.extras.nim.git";

  
  inputs."sound".type = "github";
  inputs."sound".owner = "riinr";
  inputs."sound".repo = "flake-nimble";
  inputs."sound".ref = "flake-pinning";
  inputs."sound".dir = "nimpkgs/s/sound";

  
  inputs."https://github.com/zacharycarter/nuklear-nim.git".type = "github";
  inputs."https://github.com/zacharycarter/nuklear-nim.git".owner = "riinr";
  inputs."https://github.com/zacharycarter/nuklear-nim.git".repo = "flake-nimble";
  inputs."https://github.com/zacharycarter/nuklear-nim.git".ref = "flake-pinning";
  inputs."https://github.com/zacharycarter/nuklear-nim.git".dir = "nimpkgs/h/https://github.com/zacharycarter/nuklear-nim.git";

  
  inputs."https://github.com/zacharycarter/nanovg.nim.git".type = "github";
  inputs."https://github.com/zacharycarter/nanovg.nim.git".owner = "riinr";
  inputs."https://github.com/zacharycarter/nanovg.nim.git".repo = "flake-nimble";
  inputs."https://github.com/zacharycarter/nanovg.nim.git".ref = "flake-pinning";
  inputs."https://github.com/zacharycarter/nanovg.nim.git".dir = "nimpkgs/h/https://github.com/zacharycarter/nanovg.nim.git";

  
  inputs."strfmt".type = "github";
  inputs."strfmt".owner = "riinr";
  inputs."strfmt".repo = "flake-nimble";
  inputs."strfmt".ref = "flake-pinning";
  inputs."strfmt".dir = "nimpkgs/s/strfmt";

  
  inputs."https://github.com/zacharycarter/nimassimp.git".type = "github";
  inputs."https://github.com/zacharycarter/nimassimp.git".owner = "riinr";
  inputs."https://github.com/zacharycarter/nimassimp.git".repo = "flake-nimble";
  inputs."https://github.com/zacharycarter/nimassimp.git".ref = "flake-pinning";
  inputs."https://github.com/zacharycarter/nimassimp.git".dir = "nimpkgs/h/https://github.com/zacharycarter/nimassimp.git";

  outputs = { self, nixpkgs, src-frag-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-frag-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-frag-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}