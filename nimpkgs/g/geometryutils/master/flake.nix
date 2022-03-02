{
  description = ''A collection of geometry utilities for nim'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  inputs.src-geometryutils-master.flake = false;
  inputs.src-geometryutils-master.type = "github";
  inputs.src-geometryutils-master.owner = "pseudo-random";
  inputs.src-geometryutils-master.repo = "geometryutils";
  inputs.src-geometryutils-master.ref = "refs/heads/master";
  inputs.src-geometryutils-master.inputs.nixpkgs.follows = "nixpkgs";
  
  
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

  outputs = { self, nixpkgs, flakeNimbleLib, src-geometryutils-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-geometryutils-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-geometryutils-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}