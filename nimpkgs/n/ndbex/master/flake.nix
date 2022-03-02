{
  description = ''extension modules for Nim's 'db_*' modules'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  inputs.src-ndbex-master.flake = false;
  inputs.src-ndbex-master.type = "github";
  inputs.src-ndbex-master.owner = "Senketsu";
  inputs.src-ndbex-master.repo = "nim-db-ex";
  inputs.src-ndbex-master.ref = "refs/heads/master";
  inputs.src-ndbex-master.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-ndbex-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-ndbex-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-ndbex-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}