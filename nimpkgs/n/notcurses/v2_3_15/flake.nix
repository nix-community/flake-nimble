{
  description = ''A low-level Nim wrapper for Notcurses: blingful TUIs and character graphics'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-notcurses-v2_3_15.flake = false;
  inputs.src-notcurses-v2_3_15.type = "github";
  inputs.src-notcurses-v2_3_15.owner = "michaelsbradleyjr";
  inputs.src-notcurses-v2_3_15.repo = "nim-notcurses";
  inputs.src-notcurses-v2_3_15.ref = "refs/tags/v2.3.15";
  inputs.src-notcurses-v2_3_15.inputs.nixpkgs.follows = "nixpkgs";
  
  
  inputs."nimterop".type = "github";
  inputs."nimterop".owner = "riinr";
  inputs."nimterop".repo = "flake-nimble";
  inputs."nimterop".ref = "flake-pinning";
  inputs."nimterop".dir = "nimpkgs/n/nimterop";
  inputs."nimterop".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimterop".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  outputs = { self, nixpkgs, flakeNimbleLib, src-notcurses-v2_3_15, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-notcurses-v2_3_15;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-notcurses-v2_3_15"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}