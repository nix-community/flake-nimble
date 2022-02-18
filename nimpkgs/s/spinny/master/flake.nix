{
  description = ''Spinny is a tiny terminal spinner package for the Nim Programming Language.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-spinny-master.flake = false;
  inputs.src-spinny-master.type = "github";
  inputs.src-spinny-master.owner = "Yardanico";
  inputs.src-spinny-master.repo = "spinny";
  inputs.src-spinny-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-spinny-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-spinny-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-spinny-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}