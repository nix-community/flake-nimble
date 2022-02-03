{
  description = ''A collection of geometry utilities for nim'';
  inputs.src-geometryutils-master.flake = false;
  inputs.src-geometryutils-master.type = "github";
  inputs.src-geometryutils-master.owner = "pseudo-random";
  inputs.src-geometryutils-master.repo = "geometryutils";
  inputs.src-geometryutils-master.ref = "refs/heads/master";
  
  
  inputs."sdl2".url = "path:../../../s/sdl2";
  inputs."sdl2".type = "github";
  inputs."sdl2".owner = "riinr";
  inputs."sdl2".repo = "flake-nimble";
  inputs."sdl2".ref = "flake-pinning";
  inputs."sdl2".dir = "nimpkgs/s/sdl2";

  
  inputs."opengl".url = "path:../../../o/opengl";
  inputs."opengl".type = "github";
  inputs."opengl".owner = "riinr";
  inputs."opengl".repo = "flake-nimble";
  inputs."opengl".ref = "flake-pinning";
  inputs."opengl".dir = "nimpkgs/o/opengl";

  outputs = { self, nixpkgs, src-geometryutils-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-geometryutils-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-geometryutils-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}