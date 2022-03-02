{
  description = ''A wrapper for the cMPFIT non-linear least squares fitting library'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  inputs.src-mpfit-master.flake = false;
  inputs.src-mpfit-master.type = "github";
  inputs.src-mpfit-master.owner = "Vindaar";
  inputs.src-mpfit-master.repo = "nim-mpfit";
  inputs.src-mpfit-master.ref = "refs/heads/master";
  inputs.src-mpfit-master.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-mpfit-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-mpfit-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-mpfit-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}