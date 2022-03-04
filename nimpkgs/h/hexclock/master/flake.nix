{
  description = ''Hex clock made in SDL and Nim'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-hexclock-master.flake = false;
  inputs.src-hexclock-master.type = "github";
  inputs.src-hexclock-master.owner = "RainbowAsteroids";
  inputs.src-hexclock-master.repo = "hexclock";
  inputs.src-hexclock-master.ref = "refs/heads/master";
  inputs.src-hexclock-master.inputs.nixpkgs.follows = "nixpkgs";
  
  
  inputs."sdl2".type = "github";
  inputs."sdl2".owner = "riinr";
  inputs."sdl2".repo = "flake-nimble";
  inputs."sdl2".ref = "flake-pinning";
  inputs."sdl2".dir = "nimpkgs/s/sdl2";
  inputs."sdl2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."sdl2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  outputs = { self, nixpkgs, flakeNimbleLib, src-hexclock-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-hexclock-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-hexclock-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}