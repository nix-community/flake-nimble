{
  description = ''extension modules for Nim's 'db_*' modules'';
  inputs.src-ndbex-master.flake = false;
  inputs.src-ndbex-master.type = "github";
  inputs.src-ndbex-master.owner = "Senketsu";
  inputs.src-ndbex-master.repo = "nim-db-ex";
  inputs.src-ndbex-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-ndbex-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-ndbex-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-ndbex-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}