{
  description = ''prestodb simple connector'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-db_presto-master.flake = false;
  inputs.src-db_presto-master.type = "github";
  inputs.src-db_presto-master.owner = "Bennyelg";
  inputs.src-db_presto-master.repo = "nimPresto";
  inputs.src-db_presto-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-db_presto-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-db_presto-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-db_presto-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}