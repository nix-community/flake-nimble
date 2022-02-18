{
  description = ''Basic calculator in Nim'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-crowncalc-master.flake = false;
  inputs.src-crowncalc-master.type = "github";
  inputs.src-crowncalc-master.owner = "RainbowAsteroids";
  inputs.src-crowncalc-master.repo = "crowncalc";
  inputs.src-crowncalc-master.ref = "refs/heads/master";
  
  
  inputs."noise".type = "github";
  inputs."noise".owner = "riinr";
  inputs."noise".repo = "flake-nimble";
  inputs."noise".ref = "flake-pinning";
  inputs."noise".dir = "nimpkgs/n/noise";

  
  inputs."sdl2".type = "github";
  inputs."sdl2".owner = "riinr";
  inputs."sdl2".repo = "flake-nimble";
  inputs."sdl2".ref = "flake-pinning";
  inputs."sdl2".dir = "nimpkgs/s/sdl2";

  outputs = { self, nixpkgs, flakeNimbleLib, src-crowncalc-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-crowncalc-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-crowncalc-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}