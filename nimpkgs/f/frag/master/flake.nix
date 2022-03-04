{
  description = ''A 2D|3D game engine'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-frag-master.flake = false;
  inputs.src-frag-master.type = "github";
  inputs.src-frag-master.owner = "fragworks";
  inputs.src-frag-master.repo = "frag";
  inputs.src-frag-master.ref = "refs/heads/master";
  inputs.src-frag-master.inputs.nixpkgs.follows = "nixpkgs";
  
  
  inputs."sdl2".type = "github";
  inputs."sdl2".owner = "riinr";
  inputs."sdl2".repo = "flake-nimble";
  inputs."sdl2".ref = "flake-pinning";
  inputs."sdl2".dir = "nimpkgs/s/sdl2";
  inputs."sdl2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."sdl2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  
  inputs."stb_image".type = "github";
  inputs."stb_image".owner = "riinr";
  inputs."stb_image".repo = "flake-nimble";
  inputs."stb_image".ref = "flake-pinning";
  inputs."stb_image".dir = "nimpkgs/s/stb_image";
  inputs."stb_image".inputs.nixpkgs.follows = "nixpkgs";
  inputs."stb_image".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  
  inputs."https://github.com/yglukhov/android.git".type = "github";
  inputs."https://github.com/yglukhov/android.git".owner = "riinr";
  inputs."https://github.com/yglukhov/android.git".repo = "flake-nimble";
  inputs."https://github.com/yglukhov/android.git".ref = "flake-pinning";
  inputs."https://github.com/yglukhov/android.git".dir = "nimpkgs/h/https://github.com/yglukhov/android.git";
  inputs."https://github.com/yglukhov/android.git".inputs.nixpkgs.follows = "nixpkgs";
  inputs."https://github.com/yglukhov/android.git".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  
  inputs."x11".type = "github";
  inputs."x11".owner = "riinr";
  inputs."x11".repo = "flake-nimble";
  inputs."x11".ref = "flake-pinning";
  inputs."x11".dir = "nimpkgs/x/x11";
  inputs."x11".inputs.nixpkgs.follows = "nixpkgs";
  inputs."x11".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  
  inputs."https://github.com/fragworks/nim-chipmunk.git".type = "github";
  inputs."https://github.com/fragworks/nim-chipmunk.git".owner = "riinr";
  inputs."https://github.com/fragworks/nim-chipmunk.git".repo = "flake-nimble";
  inputs."https://github.com/fragworks/nim-chipmunk.git".ref = "flake-pinning";
  inputs."https://github.com/fragworks/nim-chipmunk.git".dir = "nimpkgs/h/https://github.com/fragworks/nim-chipmunk.git";
  inputs."https://github.com/fragworks/nim-chipmunk.git".inputs.nixpkgs.follows = "nixpkgs";
  inputs."https://github.com/fragworks/nim-chipmunk.git".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  
  inputs."https://github.com/zacharycarter/bgfx.nim.git".type = "github";
  inputs."https://github.com/zacharycarter/bgfx.nim.git".owner = "riinr";
  inputs."https://github.com/zacharycarter/bgfx.nim.git".repo = "flake-nimble";
  inputs."https://github.com/zacharycarter/bgfx.nim.git".ref = "flake-pinning";
  inputs."https://github.com/zacharycarter/bgfx.nim.git".dir = "nimpkgs/h/https://github.com/zacharycarter/bgfx.nim.git";
  inputs."https://github.com/zacharycarter/bgfx.nim.git".inputs.nixpkgs.follows = "nixpkgs";
  inputs."https://github.com/zacharycarter/bgfx.nim.git".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  
  inputs."https://github.com/zacharycarter/bgfx.extras.nim.git".type = "github";
  inputs."https://github.com/zacharycarter/bgfx.extras.nim.git".owner = "riinr";
  inputs."https://github.com/zacharycarter/bgfx.extras.nim.git".repo = "flake-nimble";
  inputs."https://github.com/zacharycarter/bgfx.extras.nim.git".ref = "flake-pinning";
  inputs."https://github.com/zacharycarter/bgfx.extras.nim.git".dir = "nimpkgs/h/https://github.com/zacharycarter/bgfx.extras.nim.git";
  inputs."https://github.com/zacharycarter/bgfx.extras.nim.git".inputs.nixpkgs.follows = "nixpkgs";
  inputs."https://github.com/zacharycarter/bgfx.extras.nim.git".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  
  inputs."sound".type = "github";
  inputs."sound".owner = "riinr";
  inputs."sound".repo = "flake-nimble";
  inputs."sound".ref = "flake-pinning";
  inputs."sound".dir = "nimpkgs/s/sound";
  inputs."sound".inputs.nixpkgs.follows = "nixpkgs";
  inputs."sound".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  
  inputs."https://github.com/zacharycarter/nuklear-nim.git".type = "github";
  inputs."https://github.com/zacharycarter/nuklear-nim.git".owner = "riinr";
  inputs."https://github.com/zacharycarter/nuklear-nim.git".repo = "flake-nimble";
  inputs."https://github.com/zacharycarter/nuklear-nim.git".ref = "flake-pinning";
  inputs."https://github.com/zacharycarter/nuklear-nim.git".dir = "nimpkgs/h/https://github.com/zacharycarter/nuklear-nim.git";
  inputs."https://github.com/zacharycarter/nuklear-nim.git".inputs.nixpkgs.follows = "nixpkgs";
  inputs."https://github.com/zacharycarter/nuklear-nim.git".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  
  inputs."https://github.com/zacharycarter/nanovg.nim.git".type = "github";
  inputs."https://github.com/zacharycarter/nanovg.nim.git".owner = "riinr";
  inputs."https://github.com/zacharycarter/nanovg.nim.git".repo = "flake-nimble";
  inputs."https://github.com/zacharycarter/nanovg.nim.git".ref = "flake-pinning";
  inputs."https://github.com/zacharycarter/nanovg.nim.git".dir = "nimpkgs/h/https://github.com/zacharycarter/nanovg.nim.git";
  inputs."https://github.com/zacharycarter/nanovg.nim.git".inputs.nixpkgs.follows = "nixpkgs";
  inputs."https://github.com/zacharycarter/nanovg.nim.git".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  
  inputs."strfmt".type = "github";
  inputs."strfmt".owner = "riinr";
  inputs."strfmt".repo = "flake-nimble";
  inputs."strfmt".ref = "flake-pinning";
  inputs."strfmt".dir = "nimpkgs/s/strfmt";
  inputs."strfmt".inputs.nixpkgs.follows = "nixpkgs";
  inputs."strfmt".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  
  inputs."https://github.com/zacharycarter/nimassimp.git".type = "github";
  inputs."https://github.com/zacharycarter/nimassimp.git".owner = "riinr";
  inputs."https://github.com/zacharycarter/nimassimp.git".repo = "flake-nimble";
  inputs."https://github.com/zacharycarter/nimassimp.git".ref = "flake-pinning";
  inputs."https://github.com/zacharycarter/nimassimp.git".dir = "nimpkgs/h/https://github.com/zacharycarter/nimassimp.git";
  inputs."https://github.com/zacharycarter/nimassimp.git".inputs.nixpkgs.follows = "nixpkgs";
  inputs."https://github.com/zacharycarter/nimassimp.git".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  outputs = { self, nixpkgs, flakeNimbleLib, src-frag-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-frag-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-frag-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}