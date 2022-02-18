{
  description = ''Graphics module for Nim.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-graphics-master.flake = false;
  inputs.src-graphics-master.type = "github";
  inputs.src-graphics-master.owner = "nim-lang";
  inputs.src-graphics-master.repo = "graphics";
  inputs.src-graphics-master.ref = "refs/heads/master";
  
  
  inputs."sdl1".type = "github";
  inputs."sdl1".owner = "riinr";
  inputs."sdl1".repo = "flake-nimble";
  inputs."sdl1".ref = "flake-pinning";
  inputs."sdl1".dir = "nimpkgs/s/sdl1";

  outputs = { self, nixpkgs, flakeNimbleLib, src-graphics-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-graphics-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-graphics-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}