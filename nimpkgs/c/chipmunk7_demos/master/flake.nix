{
  description = ''Chipmunk7 demos for Nim'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-chipmunk7_demos-master.flake = false;
  inputs.src-chipmunk7_demos-master.type = "github";
  inputs.src-chipmunk7_demos-master.owner = "matkuki";
  inputs.src-chipmunk7_demos-master.repo = "chipmunk7_demos";
  inputs.src-chipmunk7_demos-master.ref = "refs/heads/master";
  
  
  inputs."sdl2".type = "github";
  inputs."sdl2".owner = "riinr";
  inputs."sdl2".repo = "flake-nimble";
  inputs."sdl2".ref = "flake-pinning";
  inputs."sdl2".dir = "nimpkgs/s/sdl2";

  
  inputs."opengl".type = "github";
  inputs."opengl".owner = "riinr";
  inputs."opengl".repo = "flake-nimble";
  inputs."opengl".ref = "flake-pinning";
  inputs."opengl".dir = "nimpkgs/o/opengl";

  outputs = { self, nixpkgs, flakeNimbleLib, src-chipmunk7_demos-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-chipmunk7_demos-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-chipmunk7_demos-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}