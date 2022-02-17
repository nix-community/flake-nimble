{
  description = ''Nim wrapper for PDCurses'';
  inputs.src-pdcurses-master.flake = false;
  inputs.src-pdcurses-master.type = "github";
  inputs.src-pdcurses-master.owner = "lcrees";
  inputs.src-pdcurses-master.repo = "pdcurses";
  inputs.src-pdcurses-master.ref = "refs/heads/master";
  
  
  inputs."oldwinapi".type = "github";
  inputs."oldwinapi".owner = "riinr";
  inputs."oldwinapi".repo = "flake-nimble";
  inputs."oldwinapi".ref = "flake-pinning";
  inputs."oldwinapi".dir = "nimpkgs/o/oldwinapi";

  outputs = { self, nixpkgs, src-pdcurses-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-pdcurses-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-pdcurses-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}