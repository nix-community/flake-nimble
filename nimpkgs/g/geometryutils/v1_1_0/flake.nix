{
  description = ''A collection of geometry utilities for nim'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-geometryutils-v1_1_0.flake = false;
  inputs.src-geometryutils-v1_1_0.type = "github";
  inputs.src-geometryutils-v1_1_0.owner = "pseudo-random";
  inputs.src-geometryutils-v1_1_0.repo = "geometryutils";
  inputs.src-geometryutils-v1_1_0.ref = "refs/tags/v1.1.0";
  inputs.src-geometryutils-v1_1_0.inputs.nixpkgs.follows = "nixpkgs";
  
  
  # inputs."sdl2".type = "github";
  # inputs."sdl2".owner = "riinr";
  # inputs."sdl2".repo = "flake-nimble";
  # inputs."sdl2".ref = "flake-pinning";
  # inputs."sdl2".dir = "nimpkgs/s/sdl2";
  # inputs."sdl2".inputs.nixpkgs.follows = "nixpkgs";
  # inputs."sdl2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  
  # inputs."opengl".type = "github";
  # inputs."opengl".owner = "riinr";
  # inputs."opengl".repo = "flake-nimble";
  # inputs."opengl".ref = "flake-pinning";
  # inputs."opengl".dir = "nimpkgs/o/opengl";
  # inputs."opengl".inputs.nixpkgs.follows = "nixpkgs";
  # inputs."opengl".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  outputs = { self, nixpkgs, flakeNimbleLib, src-geometryutils-v1_1_0, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-geometryutils-v1_1_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-geometryutils-v1_1_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}