{
  description = ''Additions to the Nim's standard library, like boost for C++'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-nimboost-v0_5_1.flake = false;
  inputs.src-nimboost-v0_5_1.type = "github";
  inputs.src-nimboost-v0_5_1.owner = "vegansk";
  inputs.src-nimboost-v0_5_1.repo = "nimboost";
  inputs.src-nimboost-v0_5_1.ref = "refs/tags/v0.5.1";
  inputs.src-nimboost-v0_5_1.inputs.nixpkgs.follows = "nixpkgs";
  
  
  inputs."patty".type = "github";
  inputs."patty".owner = "riinr";
  inputs."patty".repo = "flake-nimble";
  inputs."patty".ref = "flake-pinning";
  inputs."patty".dir = "nimpkgs/p/patty";
  inputs."patty".inputs.nixpkgs.follows = "nixpkgs";
  inputs."patty".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  outputs = { self, nixpkgs, flakeNimbleLib, src-nimboost-v0_5_1, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nimboost-v0_5_1;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-nimboost-v0_5_1"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}