{
  description = ''Database schema migration library for Nim language.'';
  inputs.src-dbschema-master.flake = false;
  inputs.src-dbschema-master.type = "github";
  inputs.src-dbschema-master.owner = "vegansk";
  inputs.src-dbschema-master.repo = "dbschema";
  inputs.src-dbschema-master.ref = "refs/heads/master";
  
  
  inputs."nimboost".url = "path:../../../n/nimboost";
  inputs."nimboost".type = "github";
  inputs."nimboost".owner = "riinr";
  inputs."nimboost".repo = "flake-nimble";
  inputs."nimboost".ref = "flake-pinning";
  inputs."nimboost".dir = "nimpkgs/n/nimboost";

  
  inputs."nimfp".url = "path:../../../n/nimfp";
  inputs."nimfp".type = "github";
  inputs."nimfp".owner = "riinr";
  inputs."nimfp".repo = "flake-nimble";
  inputs."nimfp".ref = "flake-pinning";
  inputs."nimfp".dir = "nimpkgs/n/nimfp";

  outputs = { self, nixpkgs, src-dbschema-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-dbschema-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-dbschema-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}