{
  description = ''Game Engine'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-alasgar-main.flake = false;
  inputs.src-alasgar-main.type = "github";
  inputs.src-alasgar-main.owner = "abisxir";
  inputs.src-alasgar-main.repo = "alasgar";
  inputs.src-alasgar-main.ref = "refs/heads/main";
  inputs.src-alasgar-main.inputs.nixpkgs.follows = "nixpkgs";
  
  
  inputs."nake".type = "github";
  inputs."nake".owner = "riinr";
  inputs."nake".repo = "flake-nimble";
  inputs."nake".ref = "flake-pinning";
  inputs."nake".dir = "nimpkgs/n/nake";
  inputs."nake".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nake".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  
  inputs."sdl2".type = "github";
  inputs."sdl2".owner = "riinr";
  inputs."sdl2".repo = "flake-nimble";
  inputs."sdl2".ref = "flake-pinning";
  inputs."sdl2".dir = "nimpkgs/s/sdl2";
  inputs."sdl2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."sdl2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  
  inputs."chroma".type = "github";
  inputs."chroma".owner = "riinr";
  inputs."chroma".repo = "flake-nimble";
  inputs."chroma".ref = "flake-pinning";
  inputs."chroma".dir = "nimpkgs/c/chroma";
  inputs."chroma".inputs.nixpkgs.follows = "nixpkgs";
  inputs."chroma".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  
  inputs."stbimage".type = "github";
  inputs."stbimage".owner = "riinr";
  inputs."stbimage".repo = "flake-nimble";
  inputs."stbimage".ref = "flake-pinning";
  inputs."stbimage".dir = "nimpkgs/s/stbimage";
  inputs."stbimage".inputs.nixpkgs.follows = "nixpkgs";
  inputs."stbimage".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  
  inputs."jnim".type = "github";
  inputs."jnim".owner = "riinr";
  inputs."jnim".repo = "flake-nimble";
  inputs."jnim".ref = "flake-pinning";
  inputs."jnim".dir = "nimpkgs/j/jnim";
  inputs."jnim".inputs.nixpkgs.follows = "nixpkgs";
  inputs."jnim".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  
  inputs."https://github.com/yglukhov/android".type = "github";
  inputs."https://github.com/yglukhov/android".owner = "riinr";
  inputs."https://github.com/yglukhov/android".repo = "flake-nimble";
  inputs."https://github.com/yglukhov/android".ref = "flake-pinning";
  inputs."https://github.com/yglukhov/android".dir = "nimpkgs/h/https://github.com/yglukhov/android";
  inputs."https://github.com/yglukhov/android".inputs.nixpkgs.follows = "nixpkgs";
  inputs."https://github.com/yglukhov/android".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  
  inputs."https://github.com/yglukhov/darwin".type = "github";
  inputs."https://github.com/yglukhov/darwin".owner = "riinr";
  inputs."https://github.com/yglukhov/darwin".repo = "flake-nimble";
  inputs."https://github.com/yglukhov/darwin".ref = "flake-pinning";
  inputs."https://github.com/yglukhov/darwin".dir = "nimpkgs/h/https://github.com/yglukhov/darwin";
  inputs."https://github.com/yglukhov/darwin".inputs.nixpkgs.follows = "nixpkgs";
  inputs."https://github.com/yglukhov/darwin".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  outputs = { self, nixpkgs, flakeNimbleLib, src-alasgar-main, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-alasgar-main;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-alasgar-main"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}