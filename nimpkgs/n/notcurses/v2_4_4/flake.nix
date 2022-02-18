{
  description = ''A low-level Nim wrapper for Notcurses: blingful TUIs and character graphics'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-notcurses-v2_4_4.flake = false;
  inputs.src-notcurses-v2_4_4.type = "github";
  inputs.src-notcurses-v2_4_4.owner = "michaelsbradleyjr";
  inputs.src-notcurses-v2_4_4.repo = "nim-notcurses";
  inputs.src-notcurses-v2_4_4.ref = "refs/tags/v2.4.4";
  
  
  inputs."nimterop".type = "github";
  inputs."nimterop".owner = "riinr";
  inputs."nimterop".repo = "flake-nimble";
  inputs."nimterop".ref = "flake-pinning";
  inputs."nimterop".dir = "nimpkgs/n/nimterop";

  outputs = { self, nixpkgs, flakeNimbleLib, src-notcurses-v2_4_4, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-notcurses-v2_4_4;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-notcurses-v2_4_4"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}