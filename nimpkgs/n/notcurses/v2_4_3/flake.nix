{
  description = ''A low-level Nim wrapper for Notcurses: blingful TUIs and character graphics'';
  inputs.src-notcurses-v2_4_3.flake = false;
  inputs.src-notcurses-v2_4_3.type = "github";
  inputs.src-notcurses-v2_4_3.owner = "michaelsbradleyjr";
  inputs.src-notcurses-v2_4_3.repo = "nim-notcurses";
  inputs.src-notcurses-v2_4_3.ref = "refs/tags/v2.4.3";
  
  
  inputs."nimterop".url = "path:../../../n/nimterop";
  inputs."nimterop".type = "github";
  inputs."nimterop".owner = "riinr";
  inputs."nimterop".repo = "flake-nimble";
  inputs."nimterop".ref = "flake-pinning";
  inputs."nimterop".dir = "nimpkgs/n/nimterop";

  outputs = { self, nixpkgs, src-notcurses-v2_4_3, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-notcurses-v2_4_3;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-notcurses-v2_4_3"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}