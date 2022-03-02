{
  description = ''Convert between RGB, YIQ, HLS, and HSV color systems.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  inputs.src-colorsys-master.flake = false;
  inputs.src-colorsys-master.type = "github";
  inputs.src-colorsys-master.owner = "achesak";
  inputs.src-colorsys-master.repo = "nim-colorsys";
  inputs.src-colorsys-master.ref = "refs/heads/master";
  inputs.src-colorsys-master.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-colorsys-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-colorsys-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-colorsys-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}