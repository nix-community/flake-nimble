{
  description = ''Parse config by defining an object'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-sim-master.flake = false;
  inputs.src-sim-master.type = "github";
  inputs.src-sim-master.owner = "ba0f3";
  inputs.src-sim-master.repo = "sim.nim";
  inputs.src-sim-master.ref = "refs/heads/master";
  inputs.src-sim-master.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-sim-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-sim-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-sim-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}