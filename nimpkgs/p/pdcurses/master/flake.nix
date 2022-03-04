{
  description = ''Nim wrapper for PDCurses'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-pdcurses-master.flake = false;
  inputs.src-pdcurses-master.type = "github";
  inputs.src-pdcurses-master.owner = "lcrees";
  inputs.src-pdcurses-master.repo = "pdcurses";
  inputs.src-pdcurses-master.ref = "refs/heads/master";
  inputs.src-pdcurses-master.inputs.nixpkgs.follows = "nixpkgs";
  
  
  inputs."oldwinapi".type = "github";
  inputs."oldwinapi".owner = "riinr";
  inputs."oldwinapi".repo = "flake-nimble";
  inputs."oldwinapi".ref = "flake-pinning";
  inputs."oldwinapi".dir = "nimpkgs/o/oldwinapi";
  inputs."oldwinapi".inputs.nixpkgs.follows = "nixpkgs";
  inputs."oldwinapi".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  outputs = { self, nixpkgs, flakeNimbleLib, src-pdcurses-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-pdcurses-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-pdcurses-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}