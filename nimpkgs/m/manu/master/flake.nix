{
  description = ''Matrix library'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-manu-master.flake = false;
  inputs.src-manu-master.type = "github";
  inputs.src-manu-master.owner = "planetis-m";
  inputs.src-manu-master.repo = "manu";
  inputs.src-manu-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-manu-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-manu-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-manu-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}