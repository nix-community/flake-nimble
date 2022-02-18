{
  description = ''Useful synchronization primitives'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-sync-master.flake = false;
  inputs.src-sync-master.type = "github";
  inputs.src-sync-master.owner = "planetis-m";
  inputs.src-sync-master.repo = "sync";
  inputs.src-sync-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-sync-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-sync-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-sync-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}