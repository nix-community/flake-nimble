{
  description = ''A low-level Nim wrapper for Notcurses: blingful TUIs and character graphics'';
  inputs.src-notcurses-v3_0_6.flake = false;
  inputs.src-notcurses-v3_0_6.type = "github";
  inputs.src-notcurses-v3_0_6.owner = "michaelsbradleyjr";
  inputs.src-notcurses-v3_0_6.repo = "nim-notcurses";
  inputs.src-notcurses-v3_0_6.ref = "refs/tags/v3.0.6";
  
  
  inputs."nimterop".type = "github";
  inputs."nimterop".owner = "riinr";
  inputs."nimterop".repo = "flake-nimble";
  inputs."nimterop".ref = "flake-pinning";
  inputs."nimterop".dir = "nimpkgs/n/nimterop";

  outputs = { self, nixpkgs, src-notcurses-v3_0_6, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-notcurses-v3_0_6;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-notcurses-v3_0_6"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}