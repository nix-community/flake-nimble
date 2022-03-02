{
  description = ''prestodb simple connector'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  inputs.src-db_presto-0_9_91.flake = false;
  inputs.src-db_presto-0_9_91.type = "github";
  inputs.src-db_presto-0_9_91.owner = "Bennyelg";
  inputs.src-db_presto-0_9_91.repo = "nimPresto";
  inputs.src-db_presto-0_9_91.ref = "refs/tags/0.9.91";
  inputs.src-db_presto-0_9_91.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-db_presto-0_9_91, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-db_presto-0_9_91;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-db_presto-0_9_91"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}