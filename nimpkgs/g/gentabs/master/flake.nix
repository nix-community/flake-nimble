{
  description = ''Efficient hash table that is a key-value mapping (removed from stdlib)'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-gentabs-master.flake = false;
  inputs.src-gentabs-master.type = "github";
  inputs.src-gentabs-master.owner = "lcrees";
  inputs.src-gentabs-master.repo = "gentabs";
  inputs.src-gentabs-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-gentabs-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-gentabs-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-gentabs-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}