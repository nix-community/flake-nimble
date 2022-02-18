{
  description = ''A low-level Nim wrapper for Notcurses: blingful TUIs and character graphics'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-notcurses-v2_4_7.flake = false;
  inputs.src-notcurses-v2_4_7.type = "github";
  inputs.src-notcurses-v2_4_7.owner = "michaelsbradleyjr";
  inputs.src-notcurses-v2_4_7.repo = "nim-notcurses";
  inputs.src-notcurses-v2_4_7.ref = "refs/tags/v2.4.7";
  
  
  inputs."nimterop".type = "github";
  inputs."nimterop".owner = "riinr";
  inputs."nimterop".repo = "flake-nimble";
  inputs."nimterop".ref = "flake-pinning";
  inputs."nimterop".dir = "nimpkgs/n/nimterop";

  outputs = { self, nixpkgs, flakeNimbleLib, src-notcurses-v2_4_7, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-notcurses-v2_4_7;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-notcurses-v2_4_7"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}