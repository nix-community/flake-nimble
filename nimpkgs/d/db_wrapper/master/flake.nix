{
  description = ''this libraly able to use database/sql of Go'';
  inputs.src-db_wrapper-master.flake = false;
  inputs.src-db_wrapper-master.type = "github";
  inputs.src-db_wrapper-master.owner = "sivchari";
  inputs.src-db_wrapper-master.repo = "db_wrapper";
  inputs.src-db_wrapper-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-db_wrapper-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-db_wrapper-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-db_wrapper-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}