{
  description = ''this libraly able to use database/sql of Go'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  inputs.src-db_wrapper-master.flake = false;
  inputs.src-db_wrapper-master.type = "github";
  inputs.src-db_wrapper-master.owner = "sivchari";
  inputs.src-db_wrapper-master.repo = "db_wrapper";
  inputs.src-db_wrapper-master.ref = "refs/heads/master";
  inputs.src-db_wrapper-master.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-db_wrapper-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-db_wrapper-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-db_wrapper-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}