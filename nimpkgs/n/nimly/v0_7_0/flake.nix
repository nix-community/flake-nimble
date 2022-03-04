{
  description = ''Lexer Generator and Parser Generator as a Macro Library in Nim.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-nimly-v0_7_0.flake = false;
  inputs.src-nimly-v0_7_0.type = "github";
  inputs.src-nimly-v0_7_0.owner = "loloicci";
  inputs.src-nimly-v0_7_0.repo = "nimly";
  inputs.src-nimly-v0_7_0.ref = "refs/tags/v0.7.0";
  inputs.src-nimly-v0_7_0.inputs.nixpkgs.follows = "nixpkgs";
  
  
  inputs."patty".type = "github";
  inputs."patty".owner = "riinr";
  inputs."patty".repo = "flake-nimble";
  inputs."patty".ref = "flake-pinning";
  inputs."patty".dir = "nimpkgs/p/patty";
  inputs."patty".inputs.nixpkgs.follows = "nixpkgs";
  inputs."patty".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  outputs = { self, nixpkgs, flakeNimbleLib, src-nimly-v0_7_0, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nimly-v0_7_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-nimly-v0_7_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}