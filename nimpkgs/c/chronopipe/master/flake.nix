{
  description = ''Show start/end datetime and duration of a command-line process using pipe.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-chronopipe-master.flake = false;
  inputs.src-chronopipe-master.type = "github";
  inputs.src-chronopipe-master.owner = "williamd1k0";
  inputs.src-chronopipe-master.repo = "chrono";
  inputs.src-chronopipe-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-chronopipe-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-chronopipe-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-chronopipe-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}