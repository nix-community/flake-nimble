{
  description = ''A SLR parser written in Nim with compile-time and run-time grammar generation.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-lrparser-master.flake = false;
  inputs.src-lrparser-master.type = "github";
  inputs.src-lrparser-master.owner = "vanyle";
  inputs.src-lrparser-master.repo = "lrparser";
  inputs.src-lrparser-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-lrparser-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-lrparser-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-lrparser-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}