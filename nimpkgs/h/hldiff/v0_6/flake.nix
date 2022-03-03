{
  description = ''A highlighter for diff -u-like output & port of Python difflib'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-hldiff-v0_6.flake = false;
  inputs.src-hldiff-v0_6.type = "github";
  inputs.src-hldiff-v0_6.owner = "c-blake";
  inputs.src-hldiff-v0_6.repo = "hldiff";
  inputs.src-hldiff-v0_6.ref = "refs/tags/v0.6";
  inputs.src-hldiff-v0_6.inputs.nixpkgs.follows = "nixpkgs";
  
  
  # inputs."cligen".type = "github";
  # inputs."cligen".owner = "riinr";
  # inputs."cligen".repo = "flake-nimble";
  # inputs."cligen".ref = "flake-pinning";
  # inputs."cligen".dir = "nimpkgs/c/cligen";
  # inputs."cligen".inputs.nixpkgs.follows = "nixpkgs";
  # inputs."cligen".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  outputs = { self, nixpkgs, flakeNimbleLib, src-hldiff-v0_6, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-hldiff-v0_6;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-hldiff-v0_6"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}