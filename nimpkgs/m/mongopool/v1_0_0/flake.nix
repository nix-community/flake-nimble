{
  description = ''MongoDb pooled driver'';
  inputs.src-mongopool-v1_0_0.flake = false;
  inputs.src-mongopool-v1_0_0.type = "github";
  inputs.src-mongopool-v1_0_0.owner = "JohnAD";
  inputs.src-mongopool-v1_0_0.repo = "mongopool";
  inputs.src-mongopool-v1_0_0.ref = "refs/tags/v1.0.0";
  
  
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

  outputs = { self, nixpkgs, src-mongopool-v1_0_0, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-mongopool-v1_0_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-mongopool-v1_0_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}