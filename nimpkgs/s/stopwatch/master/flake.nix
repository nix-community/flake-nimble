{
  description = ''A simple timing library for benchmarking code and other things.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-stopwatch-master.flake = false;
  inputs.src-stopwatch-master.type = "gitlab";
  inputs.src-stopwatch-master.owner = "define-private-public";
  inputs.src-stopwatch-master.repo = "stopwatch";
  inputs.src-stopwatch-master.ref = "refs/heads/master";
  inputs.src-stopwatch-master.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-stopwatch-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-stopwatch-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-stopwatch-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}