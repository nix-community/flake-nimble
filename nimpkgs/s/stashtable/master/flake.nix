{
  description = ''Concurrent hash table'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-stashtable-master.flake = false;
  inputs.src-stashtable-master.type = "github";
  inputs.src-stashtable-master.owner = "olliNiinivaara";
  inputs.src-stashtable-master.repo = "StashTable";
  inputs.src-stashtable-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-StashTable-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-StashTable-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-StashTable-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}