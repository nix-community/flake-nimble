{
  description = ''MongoDb pooled driver'';
  inputs.src-mongopool-master.flake = false;
  inputs.src-mongopool-master.type = "github";
  inputs.src-mongopool-master.owner = "JohnAD";
  inputs.src-mongopool-master.repo = "mongopool";
  inputs.src-mongopool-master.ref = "refs/heads/master";
  
  
  inputs."bson".url = "path:../../../b/bson";
  inputs."bson".type = "github";
  inputs."bson".owner = "riinr";
  inputs."bson".repo = "flake-nimble";
  inputs."bson".ref = "flake-pinning";
  inputs."bson".dir = "nimpkgs/b/bson";

  
  inputs."scram".url = "path:../../../s/scram";
  inputs."scram".type = "github";
  inputs."scram".owner = "riinr";
  inputs."scram".repo = "flake-nimble";
  inputs."scram".ref = "flake-pinning";
  inputs."scram".dir = "nimpkgs/s/scram";

  outputs = { self, nixpkgs, src-mongopool-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-mongopool-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-mongopool-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}