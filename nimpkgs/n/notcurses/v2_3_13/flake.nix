{
  description = ''A low-level Nim wrapper for Notcurses: blingful TUIs and character graphics'';
  inputs.src-notcurses-v2_3_13.flake = false;
  inputs.src-notcurses-v2_3_13.type = "github";
  inputs.src-notcurses-v2_3_13.owner = "michaelsbradleyjr";
  inputs.src-notcurses-v2_3_13.repo = "nim-notcurses";
  inputs.src-notcurses-v2_3_13.ref = "refs/tags/v2.3.13";
  
  
  inputs."nimterop".url = "path:../../../n/nimterop";
  inputs."nimterop".type = "github";
  inputs."nimterop".owner = "riinr";
  inputs."nimterop".repo = "flake-nimble";
  inputs."nimterop".ref = "flake-pinning";
  inputs."nimterop".dir = "nimpkgs/n/nimterop";

  outputs = { self, nixpkgs, src-notcurses-v2_3_13, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-notcurses-v2_3_13;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-notcurses-v2_3_13"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}