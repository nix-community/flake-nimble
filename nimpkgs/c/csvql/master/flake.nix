{
  description = ''csvql.'';
  inputs.src-csvql-master.flake = false;
  inputs.src-csvql-master.type = "github";
  inputs.src-csvql-master.owner = "Bennyelg";
  inputs.src-csvql-master.repo = "csvql";
  inputs.src-csvql-master.ref = "refs/heads/master";
  
  
  inputs."cligen".url = "path:../../../c/cligen";
  inputs."cligen".type = "github";
  inputs."cligen".owner = "riinr";
  inputs."cligen".repo = "flake-nimble";
  inputs."cligen".ref = "flake-pinning";
  inputs."cligen".dir = "nimpkgs/c/cligen";

  outputs = { self, nixpkgs, src-csvql-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-csvql-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-csvql-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}