{
  description = ''A tool that watches Python files and re-runs them on change.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-pych-master.flake = false;
  inputs.src-pych-master.type = "github";
  inputs.src-pych-master.owner = "rburmorrison";
  inputs.src-pych-master.repo = "pych";
  inputs.src-pych-master.ref = "refs/heads/master";
  inputs.src-pych-master.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-pych-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-pych-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-pych-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}