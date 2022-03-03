{
  description = ''prestodb simple connector'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-db_presto-0_9_5.flake = false;
  inputs.src-db_presto-0_9_5.type = "github";
  inputs.src-db_presto-0_9_5.owner = "Bennyelg";
  inputs.src-db_presto-0_9_5.repo = "nimPresto";
  inputs.src-db_presto-0_9_5.ref = "refs/tags/0.9.5";
  inputs.src-db_presto-0_9_5.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-db_presto-0_9_5, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-db_presto-0_9_5;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-db_presto-0_9_5"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}