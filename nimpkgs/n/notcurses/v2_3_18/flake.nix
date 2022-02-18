{
  description = ''A low-level Nim wrapper for Notcurses: blingful TUIs and character graphics'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-notcurses-v2_3_18.flake = false;
  inputs.src-notcurses-v2_3_18.type = "github";
  inputs.src-notcurses-v2_3_18.owner = "michaelsbradleyjr";
  inputs.src-notcurses-v2_3_18.repo = "nim-notcurses";
  inputs.src-notcurses-v2_3_18.ref = "refs/tags/v2.3.18";
  
  
  inputs."nimterop".type = "github";
  inputs."nimterop".owner = "riinr";
  inputs."nimterop".repo = "flake-nimble";
  inputs."nimterop".ref = "flake-pinning";
  inputs."nimterop".dir = "nimpkgs/n/nimterop";

  outputs = { self, nixpkgs, flakeNimbleLib, src-notcurses-v2_3_18, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-notcurses-v2_3_18;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-notcurses-v2_3_18"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}