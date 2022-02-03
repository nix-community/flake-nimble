{
  description = ''A low-level Nim wrapper for Notcurses: blingful TUIs and character graphics'';
  inputs.src-notcurses-master.flake = false;
  inputs.src-notcurses-master.type = "github";
  inputs.src-notcurses-master.owner = "michaelsbradleyjr";
  inputs.src-notcurses-master.repo = "nim-notcurses";
  inputs.src-notcurses-master.ref = "refs/heads/master";
  
  
  inputs."nimterop".url = "path:../../../n/nimterop";
  inputs."nimterop".type = "github";
  inputs."nimterop".owner = "riinr";
  inputs."nimterop".repo = "flake-nimble";
  inputs."nimterop".ref = "flake-pinning";
  inputs."nimterop".dir = "nimpkgs/n/nimterop";

  outputs = { self, nixpkgs, src-notcurses-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-notcurses-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-notcurses-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}