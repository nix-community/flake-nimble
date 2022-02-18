{
  description = ''MongoDb pooled driver'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-mongopool-master.flake = false;
  inputs.src-mongopool-master.type = "github";
  inputs.src-mongopool-master.owner = "JohnAD";
  inputs.src-mongopool-master.repo = "mongopool";
  inputs.src-mongopool-master.ref = "refs/heads/master";
  
  
  inputs."bson".type = "github";
  inputs."bson".owner = "riinr";
  inputs."bson".repo = "flake-nimble";
  inputs."bson".ref = "flake-pinning";
  inputs."bson".dir = "nimpkgs/b/bson";

  
  inputs."scram".type = "github";
  inputs."scram".owner = "riinr";
  inputs."scram".repo = "flake-nimble";
  inputs."scram".ref = "flake-pinning";
  inputs."scram".dir = "nimpkgs/s/scram";

  outputs = { self, nixpkgs, flakeNimbleLib, src-mongopool-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-mongopool-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-mongopool-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}