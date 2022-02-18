{
  description = ''Nim bindings for libshout'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-nshout-master.flake = false;
  inputs.src-nshout-master.type = "github";
  inputs.src-nshout-master.owner = "Senketsu";
  inputs.src-nshout-master.repo = "nshout";
  inputs.src-nshout-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-nshout-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nshout-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-nshout-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}