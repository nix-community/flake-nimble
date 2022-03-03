{
  description = ''Lock-free queue implementations for Nim.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-lockfreequeues-v2_0_5.flake = false;
  inputs.src-lockfreequeues-v2_0_5.type = "github";
  inputs.src-lockfreequeues-v2_0_5.owner = "elijahr";
  inputs.src-lockfreequeues-v2_0_5.repo = "lockfreequeues";
  inputs.src-lockfreequeues-v2_0_5.ref = "refs/tags/v2.0.5";
  inputs.src-lockfreequeues-v2_0_5.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-lockfreequeues-v2_0_5, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-lockfreequeues-v2_0_5;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-lockfreequeues-v2_0_5"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}