{
  description = ''A wrapper for the non-linear optimization C library Nlopt'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  inputs.src-nlopt-master.flake = false;
  inputs.src-nlopt-master.type = "github";
  inputs.src-nlopt-master.owner = "Vindaar";
  inputs.src-nlopt-master.repo = "nimnlopt";
  inputs.src-nlopt-master.ref = "refs/heads/master";
  inputs.src-nlopt-master.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-nlopt-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nlopt-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-nlopt-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}