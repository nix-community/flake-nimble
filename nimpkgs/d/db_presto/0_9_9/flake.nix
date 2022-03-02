{
  description = ''prestodb simple connector'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  inputs.src-db_presto-0_9_9.flake = false;
  inputs.src-db_presto-0_9_9.type = "github";
  inputs.src-db_presto-0_9_9.owner = "Bennyelg";
  inputs.src-db_presto-0_9_9.repo = "nimPresto";
  inputs.src-db_presto-0_9_9.ref = "refs/tags/0.9.9";
  inputs.src-db_presto-0_9_9.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-db_presto-0_9_9, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-db_presto-0_9_9;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-db_presto-0_9_9"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}