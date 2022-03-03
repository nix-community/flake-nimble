{
  description = ''Lexer Generator and Parser Generator as a Macro Library in Nim.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-nimly-master.flake = false;
  inputs.src-nimly-master.type = "github";
  inputs.src-nimly-master.owner = "loloicci";
  inputs.src-nimly-master.repo = "nimly";
  inputs.src-nimly-master.ref = "refs/heads/master";
  inputs.src-nimly-master.inputs.nixpkgs.follows = "nixpkgs";
  
  
  # inputs."patty".type = "github";
  # inputs."patty".owner = "riinr";
  # inputs."patty".repo = "flake-nimble";
  # inputs."patty".ref = "flake-pinning";
  # inputs."patty".dir = "nimpkgs/p/patty";
  # inputs."patty".inputs.nixpkgs.follows = "nixpkgs";
  # inputs."patty".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  outputs = { self, nixpkgs, flakeNimbleLib, src-nimly-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nimly-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-nimly-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}