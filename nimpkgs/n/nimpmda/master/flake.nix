{
  description = ''PCP PMDA module bindings'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-nimpmda-master.flake = false;
  inputs.src-nimpmda-master.type = "github";
  inputs.src-nimpmda-master.owner = "jasonk000";
  inputs.src-nimpmda-master.repo = "nimpmda";
  inputs.src-nimpmda-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-nimpmda-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nimpmda-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-nimpmda-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}