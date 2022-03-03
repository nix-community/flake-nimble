{
  description = ''MongoDb pooled driver'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-mongopool-v1_0_1.flake = false;
  inputs.src-mongopool-v1_0_1.type = "github";
  inputs.src-mongopool-v1_0_1.owner = "JohnAD";
  inputs.src-mongopool-v1_0_1.repo = "mongopool";
  inputs.src-mongopool-v1_0_1.ref = "refs/tags/v1.0.1";
  inputs.src-mongopool-v1_0_1.inputs.nixpkgs.follows = "nixpkgs";
  
  
  # inputs."bson".type = "github";
  # inputs."bson".owner = "riinr";
  # inputs."bson".repo = "flake-nimble";
  # inputs."bson".ref = "flake-pinning";
  # inputs."bson".dir = "nimpkgs/b/bson";
  # inputs."bson".inputs.nixpkgs.follows = "nixpkgs";
  # inputs."bson".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  
  # inputs."scram".type = "github";
  # inputs."scram".owner = "riinr";
  # inputs."scram".repo = "flake-nimble";
  # inputs."scram".ref = "flake-pinning";
  # inputs."scram".dir = "nimpkgs/s/scram";
  # inputs."scram".inputs.nixpkgs.follows = "nixpkgs";
  # inputs."scram".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  outputs = { self, nixpkgs, flakeNimbleLib, src-mongopool-v1_0_1, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-mongopool-v1_0_1;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-mongopool-v1_0_1"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}