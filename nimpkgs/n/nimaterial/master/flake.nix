{
  description = ''nimaterial is a CSS output library based on material design.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-nimaterial-master.flake = false;
  inputs.src-nimaterial-master.type = "github";
  inputs.src-nimaterial-master.owner = "momeemt";
  inputs.src-nimaterial-master.repo = "nimaterial";
  inputs.src-nimaterial-master.ref = "refs/heads/master";
  inputs.src-nimaterial-master.inputs.nixpkgs.follows = "nixpkgs";
  
  
  inputs."palette".type = "github";
  inputs."palette".owner = "riinr";
  inputs."palette".repo = "flake-nimble";
  inputs."palette".ref = "flake-pinning";
  inputs."palette".dir = "nimpkgs/p/palette";
  inputs."palette".inputs.nixpkgs.follows = "nixpkgs";
  inputs."palette".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  outputs = { self, nixpkgs, flakeNimbleLib, src-nimaterial-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nimaterial-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-nimaterial-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}